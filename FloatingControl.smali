.class public Lcom/vcam/FloatingControl;
.super Landroid/app/Service;

# (هذا الكود يضيف وظيفة التدوير عند الضغط على الزر)
.method public static rotateVideo(I)V
    .locals 1
    # المنطق: تغيير قيمة 0x5a (90) إلى 0x0 أو 0xb4 (180)
    sput p0, Lcom/vcam/HookSettings;->currentRotation:I
    return-void
.end method
