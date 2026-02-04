.class Lcom/example/vcam/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/vcam/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/vcam/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/vcam/MainActivity;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/example/vcam/MainActivity$1;->this$0:Lcom/example/vcam/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 130
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 131
    iget-object p1, p0, Lcom/example/vcam/MainActivity$1;->this$0:Lcom/example/vcam/MainActivity;

    # invokes: Lcom/example/vcam/MainActivity;->has_permission()Z
    invoke-static {p1}, Lcom/example/vcam/MainActivity;->access$000(Lcom/example/vcam/MainActivity;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 132
    iget-object p1, p0, Lcom/example/vcam/MainActivity$1;->this$0:Lcom/example/vcam/MainActivity;

    # invokes: Lcom/example/vcam/MainActivity;->request_permission()V
    invoke-static {p1}, Lcom/example/vcam/MainActivity;->access$100(Lcom/example/vcam/MainActivity;)V

    goto :goto_46

    .line 134
    :cond_14
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera1/no-silent.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eq v0, p2, :cond_46

    if-eqz p2, :cond_43

    .line 138
    :try_start_3a
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    .line 143
    :cond_43
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 147
    :cond_46
    :goto_46
    iget-object p1, p0, Lcom/example/vcam/MainActivity$1;->this$0:Lcom/example/vcam/MainActivity;

    # invokes: Lcom/example/vcam/MainActivity;->sync_statue_with_files()V
    invoke-static {p1}, Lcom/example/vcam/MainActivity;->access$200(Lcom/example/vcam/MainActivity;)V

    :cond_4b
    return-void
.end method
