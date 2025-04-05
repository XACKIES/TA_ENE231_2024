# TA_ENE231_2024
created by [Kittiphop Phanthachart](https://bento.me/mac-kittiphop) (a 3rd-year Engineering student)

Simulation Setup

- ดาวน์โหลดและติดตั้ง GHDL และ GtkWave
- คัดลอกโฟลเดอร์ที่ได้ไปไว้ที่ตำแหน่งที่ต้องการ เช่น C:\ [ตั่งชื่อไฟล์] \GDHL
- คัดลอกโฟลเดอร์ที่ได้ไปไว้ที่ตำแหน่งที่ต้องการ เช่น C:\ [ตั่งชื่อไฟล์] \gtkwave
- เพิ่ม GHDL ลงใน Environment Variables:
  -  เปิด Control Panel และไปที่ System > Advanced system settings
  -  คลิก Environment Variables
  -  ในส่วนของ System Variables ค้นหาตัวแปร Path และคลิก Edit
  -  คลิก New และเพิ่มเส้นทางท่เีก็บ GHDL เช่น C:\cad\GDHL\bin
  -  กด OK เพื่อบันทึกการเปลี่ยนแปลง

- ทดสอบการติดตั้ง
  -  เปิด Command Prompt **( Window + R --> cmd )**
  -  พิมพ์คำสั่ง `gtkwave --version`
