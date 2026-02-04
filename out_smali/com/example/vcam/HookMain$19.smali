.class Lcom/example/vcam/HookMain$19;
.super Ljava/lang/Object;
.source "HookMain.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/vcam/HookMain;->process_camera2_play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/vcam/HookMain;


# direct methods
.method constructor <init>(Lcom/example/vcam/HookMain;)V
    .registers 2

    .line 778
    iput-object p1, p0, Lcom/example/vcam/HookMain$19;->this$0:Lcom/example/vcam/HookMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 780
    sget-object p1, Lcom/example/vcam/HookMain;->c2_player_1:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
