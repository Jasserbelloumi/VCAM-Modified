.class Lcom/example/vcam/HookMain$20$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "HookMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/vcam/HookMain$20;->beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/vcam/HookMain$20;


# direct methods
.method constructor <init>(Lcom/example/vcam/HookMain$20;)V
    .registers 2

    .line 862
    iput-object p1, p0, Lcom/example/vcam/HookMain$20$1;->this$1:Lcom/example/vcam/HookMain$20;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 865
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_53

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010VCAM\u3011createCaptureSession\u521b\u6377\u6355\u83b7\uff0c\u539f\u59cb:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u865a\u62df\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/example/vcam/HookMain;->c2_virtual_surface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 867
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/Surface;

    sget-object v4, Lcom/example/vcam/HookMain;->c2_virtual_surface:Landroid/view/Surface;

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v0, v1

    .line 868
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-eqz v0, :cond_53

    .line 869
    iget-object v0, p0, Lcom/example/vcam/HookMain$20$1;->this$1:Lcom/example/vcam/HookMain$20;

    iget-object v0, v0, Lcom/example/vcam/HookMain$20;->this$0:Lcom/example/vcam/HookMain;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v2

    check-cast p1, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    # invokes: Lcom/example/vcam/HookMain;->process_camera2Session_callback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    invoke-static {v0, p1}, Lcom/example/vcam/HookMain;->access$600(Lcom/example/vcam/HookMain;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    :cond_53
    return-void
.end method
