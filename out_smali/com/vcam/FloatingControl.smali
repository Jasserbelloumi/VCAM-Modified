.class public Lcom/vcam/FloatingControl;
.super Ljava/lang/Object;

.field public static isMirrored:Z = false
.field public static rotationAngle:I = 0

.method public static showSettings(Landroid/content/Context;)V
    .locals 2
    const-string v0, "VCam Controller Active"
    const/4 v1, 0x1
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    return-void
.end method
