.class Lcom/sshtools/common/logger/FileWatchingService$1;
.super Ljava/lang/Thread;
.source "FileWatchingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/logger/FileWatchingService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/logger/FileWatchingService;


# direct methods
.method constructor <init>(Lcom/sshtools/common/logger/FileWatchingService;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/sshtools/common/logger/FileWatchingService$1;->this$0:Lcom/sshtools/common/logger/FileWatchingService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sshtools/common/logger/FileWatchingService$1;->this$0:Lcom/sshtools/common/logger/FileWatchingService;

    invoke-virtual {v0}, Lcom/sshtools/common/logger/FileWatchingService;->stopThread()V

    return-void
.end method
