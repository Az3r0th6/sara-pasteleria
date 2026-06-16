-- ============================================================
-- SISTEMA DE GESTIÓN - SARA PASTELERÍA
-- Ejecutar este script en: Supabase → SQL Editor → New query
-- ============================================================

-- 1. PRODUCTOS
create table if not exists productos (
  id bigint primary key generated always as identity,
  nombre text not null,
  precio numeric(12,2) not null default 0,
  costo  numeric(12,2) not null default 0,
  created_at timestamptz default now()
);

-- 2. INSUMOS
create table if not exists insumos (
  id bigint primary key generated always as identity,
  nombre        text not null,
  stock_inicial numeric(12,3) not null default 0,
  compras       numeric(12,3) not null default 0,
  consumo       numeric(12,3) not null default 0,
  created_at    timestamptz default now()
);

-- 3. RECETAS
create table if not exists recetas (
  id          bigint primary key generated always as identity,
  producto_id bigint references productos(id) on delete cascade,
  insumo_id   bigint references insumos(id)   on delete cascade,
  cantidad    numeric(12,3) not null,
  created_at  timestamptz default now()
);

-- 4. VENTAS
create table if not exists ventas (
  id          bigint primary key generated always as identity,
  fecha       date not null,
  producto_id bigint references productos(id) on delete cascade,
  cantidad    numeric(12,3) not null,
  precio      numeric(12,2) not null,
  total       numeric(12,2) not null,
  mes         text not null,
  created_at  timestamptz default now()
);

-- ============================================================
-- PERMISOS: permitir lectura y escritura con la clave anon
-- ============================================================
alter table productos enable row level security;
alter table insumos   enable row level security;
alter table recetas   enable row level security;
alter table ventas    enable row level security;

-- Política: acceso total con clave anon (app de uso personal)
create policy "acceso_total_productos" on productos for all using (true) with check (true);
create policy "acceso_total_insumos"   on insumos   for all using (true) with check (true);
create policy "acceso_total_recetas"   on recetas   for all using (true) with check (true);
create policy "acceso_total_ventas"    on ventas    for all using (true) with check (true);
