-- รันครั้งเดียวใน Supabase > SQL Editor > New query
-- เพิ่มคอลัมน์สำหรับเก็บประวัติและข้อมูลของแอปเดิม โดยไม่ลบข้อมูลเก่า
alter table public.account_tasks
add column if not exists task_data jsonb not null default '{}'::jsonb;
