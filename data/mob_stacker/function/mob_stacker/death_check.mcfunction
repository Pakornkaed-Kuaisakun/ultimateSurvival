# pig โดนตีจนเกือบตาย → heal คืนเต็ม แล้วปล่อยให้รับ damage ต่อตามปกติ
# การลด count และ spawn pig ใหม่จะเกิดขึ้นใน stand_owner_dead เมื่อ pig ตายจริง

# 1. ติด mm.dying ชั่วคราวเพื่อกัน trigger ซ้ำในติ๊กนี้
tag @s add mm.dying

# 2. heal คืนเต็ม
effect give @s minecraft:instant_health 1 255 true

# 3. ลบ mm.dying ออกท้ายติ๊ก → tick ถัดไป intercept ได้ใหม่ถ้าโดนตีอีก
tag @s remove mm.dying
