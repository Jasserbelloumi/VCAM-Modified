.class Lcom/example/vcam/HookMain$25;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "HookMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/vcam/HookMain;->process_callback(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/vcam/HookMain;

.field final synthetic val$finalNeed_stop:I

.field final synthetic val$preview_cb_class:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/example/vcam/HookMain;Ljava/lang/Class;I)V
    .registers 4

    .line 1155
    iput-object p1, p0, Lcom/example/vcam/HookMain$25;->this$0:Lcom/example/vcam/HookMain;

    iput-object p2, p0, Lcom/example/vcam/HookMain$25;->val$preview_cb_class:Ljava/lang/Class;

    iput p3, p0, Lcom/example/vcam/HookMain$25;->val$finalNeed_stop:I

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

    .line 1158
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Landroid/hardware/Camera;

    .line 1159
    sget-object v2, Lcom/example/vcam/HookMain;->camera_onPreviewFrame:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    .line 1160
    :goto_10
    sget-object v0, Lcom/example/vcam/HookMain;->data_buffer:[B

    if-nez v0, :cond_15

    goto :goto_10

    .line 1162
    :cond_15
    sget-object v0, Lcom/example/vcam/HookMain;->data_buffer:[B

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v1, v1, v2

    sget-object v3, Lcom/example/vcam/HookMain;->data_buffer:[B

    array-length v3, v3

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v2

    check-cast p1, [B

    array-length p1, p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_154

    .line 1164
    :cond_2e
    iget-object v0, p0, Lcom/example/vcam/HookMain$25;->val$preview_cb_class:Ljava/lang/Class;

    sput-object v0, Lcom/example/vcam/HookMain;->camera_callback_calss:Ljava/lang/Class;

    .line 1165
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Landroid/hardware/Camera;

    sput-object v0, Lcom/example/vcam/HookMain;->camera_onPreviewFrame:Landroid/hardware/Camera;

    .line 1166
    sget-object v0, Lcom/example/vcam/HookMain;->camera_onPreviewFrame:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    sput v0, Lcom/example/vcam/HookMain;->mwidth:I

    .line 1167
    sget-object v0, Lcom/example/vcam/HookMain;->camera_onPreviewFrame:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    sput v0, Lcom/example/vcam/HookMain;->mhight:I

    .line 1168
    sget-object v0, Lcom/example/vcam/HookMain;->camera_onPreviewFrame:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v0

    .line 1169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010VCAM\u3011\u5e27\u9884\u89c8\u56de\u8c03\u521d\u59cb\u5316\uff1a\u5bbd\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/example/vcam/HookMain;->mwidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u9ad8\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/example/vcam/HookMain;->mhight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u5e27\u7387\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 1170
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/DCIM/Camera1/no_toast.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1171
    iget-object v3, p0, Lcom/example/vcam/HookMain$25;->this$0:Lcom/example/vcam/HookMain;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, v3, Lcom/example/vcam/HookMain;->need_to_show_toast:Z

    .line 1172
    iget-object v0, p0, Lcom/example/vcam/HookMain$25;->this$0:Lcom/example/vcam/HookMain;

    iget-object v0, v0, Lcom/example/vcam/HookMain;->toast_content:Landroid/content/Context;

    if-eqz v0, :cond_102

    iget-object v0, p0, Lcom/example/vcam/HookMain$25;->this$0:Lcom/example/vcam/HookMain;

    iget-boolean v0, v0, Lcom/example/vcam/HookMain;->need_to_show_toast:Z

    if-eqz v0, :cond_102

    .line 1174
    :try_start_bb
    iget-object v0, p0, Lcom/example/vcam/HookMain$25;->this$0:Lcom/example/vcam/HookMain;

    iget-object v0, v0, Lcom/example/vcam/HookMain;->toast_content:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d1\u73b0\u9884\u89c8\n\u5bbd\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/example/vcam/HookMain;->mwidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n\u9ad8\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/example/vcam/HookMain;->mhight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n\u9700\u8981\u89c6\u9891\u5206\u8fa8\u7387\u4e0e\u5176\u5b8c\u5168\u76f8\u540c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_e8} :catch_e9

    goto :goto_102

    :catch_e9
    move-exception v0

    .line 1176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010VCAM\u3011[toast]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 1179
    :cond_102
    :goto_102
    iget v0, p0, Lcom/example/vcam/HookMain$25;->val$finalNeed_stop:I

    if-ne v0, v1, :cond_107

    return-void

    .line 1182
    :cond_107
    sget-object v0, Lcom/example/vcam/HookMain;->hw_decode_obj:Lcom/example/vcam/VideoToFrames;

    if-eqz v0, :cond_110

    .line 1183
    sget-object v0, Lcom/example/vcam/HookMain;->hw_decode_obj:Lcom/example/vcam/VideoToFrames;

    invoke-virtual {v0}, Lcom/example/vcam/VideoToFrames;->stopDecode()V

    .line 1185
    :cond_110
    new-instance v0, Lcom/example/vcam/VideoToFrames;

    invoke-direct {v0}, Lcom/example/vcam/VideoToFrames;-><init>()V

    sput-object v0, Lcom/example/vcam/HookMain;->hw_decode_obj:Lcom/example/vcam/VideoToFrames;

    .line 1186
    sget-object v0, Lcom/example/vcam/HookMain;->hw_decode_obj:Lcom/example/vcam/VideoToFrames;

    sget-object v1, Lcom/example/vcam/OutputImageFormat;->NV21:Lcom/example/vcam/OutputImageFormat;

    const-string v3, ""

    invoke-virtual {v0, v3, v1}, Lcom/example/vcam/VideoToFrames;->setSaveFrames(Ljava/lang/String;Lcom/example/vcam/OutputImageFormat;)V

    .line 1187
    sget-object v0, Lcom/example/vcam/HookMain;->hw_decode_obj:Lcom/example/vcam/VideoToFrames;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/example/vcam/HookMain;->video_path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "virtual.mp4"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/vcam/VideoToFrames;->decode(Ljava/lang/String;)V

    .line 1188
    :goto_138
    sget-object v0, Lcom/example/vcam/HookMain;->data_buffer:[B

    if-nez v0, :cond_13d

    goto :goto_138

    .line 1190
    :cond_13d
    sget-object v0, Lcom/example/vcam/HookMain;->data_buffer:[B

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v1, v1, v2

    sget-object v3, Lcom/example/vcam/HookMain;->data_buffer:[B

    array-length v3, v3

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v2

    check-cast p1, [B

    array-length p1, p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_154
    return-void
.end method
