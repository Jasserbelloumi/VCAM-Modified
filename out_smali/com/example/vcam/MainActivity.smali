.class public Lcom/example/vcam/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private disable_switch:Landroid/widget/Switch;

.field private disable_toast_switch:Landroid/widget/Switch;

.field private force_private_dir:Landroid/widget/Switch;

.field private force_show_switch:Landroid/widget/Switch;

.field private play_sound_switch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/vcam/MainActivity;)Z
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->has_permission()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/example/vcam/MainActivity;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->request_permission()V

    return-void
.end method

.method static synthetic access$200(Lcom/example/vcam/MainActivity;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->sync_statue_with_files()V

    return-void
.end method

.method private has_permission()Z
    .registers 4

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1a

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 217
    invoke-virtual {p0, v0}, Lcom/example/vcam/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_19

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 218
    invoke-virtual {p0, v0}, Lcom/example/vcam/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :cond_1a
    :goto_1a
    return v1
.end method

.method private request_permission()V
    .registers 4

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_41

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 201
    invoke-virtual {p0, v0}, Lcom/example/vcam/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 202
    invoke-virtual {p0, v0}, Lcom/example/vcam/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_41

    .line 203
    :cond_17
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060007

    .line 204
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f060006

    .line 205
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f060005

    .line 207
    new-instance v2, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/example/vcam/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f060008

    .line 209
    new-instance v2, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/example/vcam/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_41
    return-void
.end method

.method private sync_statue_with_files()V
    .registers 4

    .line 225
    invoke-virtual {p0}, Lcom/example/vcam/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u3010VCAM\u3011[sync]\u540c\u6b65\u5f00\u5173\u72b6\u6001"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->has_permission()Z

    move-result v0

    if-nez v0, :cond_17

    .line 228
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->request_permission()V

    goto :goto_3e

    .line 230
    :cond_17
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DCIM/Camera1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 232
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 236
    :cond_3e
    :goto_3e
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DCIM/Camera1/disable.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/example/vcam/MainActivity;->disable_switch:Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 239
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DCIM/Camera1/force_show.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/example/vcam/MainActivity;->force_show_switch:Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 242
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DCIM/Camera1/no-silent.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/example/vcam/MainActivity;->play_sound_switch:Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 245
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DCIM/Camera1/private_dir.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/example/vcam/MainActivity;->force_private_dir:Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 248
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DCIM/Camera1/no_toast.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/example/vcam/MainActivity;->disable_toast_switch:Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$com-example-vcam-MainActivity(Landroid/view/View;)V
    .registers 4

    const-string p1, "https://github.com/w2016561536/android_virtual_cam"

    .line 71
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/example/vcam/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$com-example-vcam-MainActivity(Landroid/view/View;)V
    .registers 4

    const-string p1, "https://gitee.com/w2016561536/android_virtual_cam"

    .line 78
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/example/vcam/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onCreate$2$com-example-vcam-MainActivity(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 84
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 85
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->has_permission()Z

    move-result p1

    if-nez p1, :cond_10

    .line 86
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->request_permission()V

    goto :goto_42

    .line 88
    :cond_10
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera1/disable.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eq v0, p2, :cond_42

    if-eqz p2, :cond_3f

    .line 92
    :try_start_36
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_42

    :catch_3a
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 97
    :cond_3f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 101
    :cond_42
    :goto_42
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->sync_statue_with_files()V

    :cond_45
    return-void
.end method

.method public synthetic lambda$onCreate$3$com-example-vcam-MainActivity(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 106
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 107
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->has_permission()Z

    move-result p1

    if-nez p1, :cond_10

    .line 108
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->request_permission()V

    goto :goto_42

    .line 110
    :cond_10
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera1/force_show.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eq v0, p2, :cond_42

    if-eqz p2, :cond_3f

    .line 114
    :try_start_36
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_42

    :catch_3a
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 119
    :cond_3f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 123
    :cond_42
    :goto_42
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->sync_statue_with_files()V

    :cond_45
    return-void
.end method

.method public synthetic lambda$onCreate$4$com-example-vcam-MainActivity(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 153
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 154
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->has_permission()Z

    move-result p1

    if-nez p1, :cond_10

    .line 155
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->request_permission()V

    goto :goto_42

    .line 157
    :cond_10
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera1/private_dir.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eq v0, p2, :cond_42

    if-eqz p2, :cond_3f

    .line 161
    :try_start_36
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_42

    :catch_3a
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 166
    :cond_3f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 170
    :cond_42
    :goto_42
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->sync_statue_with_files()V

    :cond_45
    return-void
.end method

.method public synthetic lambda$onCreate$5$com-example-vcam-MainActivity(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 176
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 177
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->has_permission()Z

    move-result p1

    if-nez p1, :cond_10

    .line 178
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->request_permission()V

    goto :goto_42

    .line 180
    :cond_10
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera1/no_toast.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eq v0, p2, :cond_42

    if-eqz p2, :cond_3f

    .line 184
    :try_start_36
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_42

    :catch_3a
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 189
    :cond_3f
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 193
    :cond_42
    :goto_42
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->sync_statue_with_files()V

    :cond_45
    return-void
.end method

.method public synthetic lambda$request_permission$6$com-example-vcam-MainActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    const p1, 0x7f060007

    const/4 p2, 0x0

    .line 207
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$request_permission$7$com-example-vcam-MainActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 209
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/example/vcam/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f040000

    .line 56
    invoke-virtual {p0, p1}, Lcom/example/vcam/MainActivity;->setContentView(I)V

    const/high16 p1, 0x7f030000

    .line 58
    invoke-virtual {p0, p1}, Lcom/example/vcam/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f030002

    .line 59
    invoke-virtual {p0, v0}, Lcom/example/vcam/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/example/vcam/MainActivity;->force_show_switch:Landroid/widget/Switch;

    const v0, 0x7f030003

    .line 60
    invoke-virtual {p0, v0}, Lcom/example/vcam/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/example/vcam/MainActivity;->disable_switch:Landroid/widget/Switch;

    const v0, 0x7f030004

    .line 61
    invoke-virtual {p0, v0}, Lcom/example/vcam/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/example/vcam/MainActivity;->play_sound_switch:Landroid/widget/Switch;

    const v0, 0x7f030005

    .line 62
    invoke-virtual {p0, v0}, Lcom/example/vcam/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/example/vcam/MainActivity;->force_private_dir:Landroid/widget/Switch;

    const v0, 0x7f030006

    .line 63
    invoke-virtual {p0, v0}, Lcom/example/vcam/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/example/vcam/MainActivity;->disable_toast_switch:Landroid/widget/Switch;

    .line 67
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->sync_statue_with_files()V

    .line 69
    new-instance v0, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/example/vcam/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f030001

    .line 76
    invoke-virtual {p0, p1}, Lcom/example/vcam/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 77
    new-instance v0, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/example/vcam/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lcom/example/vcam/MainActivity;->disable_switch:Landroid/widget/Switch;

    new-instance v0, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/example/vcam/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    iget-object p1, p0, Lcom/example/vcam/MainActivity;->force_show_switch:Landroid/widget/Switch;

    new-instance v0, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/example/vcam/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    iget-object p1, p0, Lcom/example/vcam/MainActivity;->play_sound_switch:Landroid/widget/Switch;

    new-instance v0, Lcom/example/vcam/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/example/vcam/MainActivity$1;-><init>(Lcom/example/vcam/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 152
    iget-object p1, p0, Lcom/example/vcam/MainActivity;->force_private_dir:Landroid/widget/Switch;

    new-instance v0, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/example/vcam/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    iget-object p1, p0, Lcom/example/vcam/MainActivity;->disable_toast_switch:Landroid/widget/Switch;

    new-instance v0, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/example/vcam/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/example/vcam/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 34
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 35
    array-length p1, p3

    if-lez p1, :cond_3e

    const/4 p1, 0x0

    .line 36
    aget p2, p3, p1

    const/4 p3, -0x1

    if-ne p2, p3, :cond_17

    const p2, 0x7f060007

    .line 37
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3e

    .line 39
    :cond_17
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/DCIM/Camera1/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_3e

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    :cond_3e
    :goto_3e
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 50
    invoke-direct {p0}, Lcom/example/vcam/MainActivity;->sync_statue_with_files()V

    return-void
.end method
