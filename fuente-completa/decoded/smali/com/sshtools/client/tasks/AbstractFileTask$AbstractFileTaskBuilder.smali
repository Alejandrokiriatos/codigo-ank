.class public abstract Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;
.super Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;
.source "AbstractFileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/AbstractFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFileTaskBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder<",
        "TB;TT;>;T:",
        "Lcom/sshtools/client/tasks/AbstractConnectionTask;",
        ">",
        "Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder<",
        "TB;TT;>;"
    }
.end annotation


# instance fields
.field private progress:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/FileTransferProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetprogress(Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;->progress:Ljava/util/Optional;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;-><init>()V

    .line 32
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;->progress:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/sshtools/client/tasks/AbstractConnectionTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public withProgress(Lcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/FileTransferProgress;",
            ")TB;"
        }
    .end annotation

    .line 58
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;->withProgress(Ljava/util/Optional;)Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withProgress(Ljava/util/Optional;)Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/FileTransferProgress;",
            ">;)TB;"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;->progress:Ljava/util/Optional;

    return-object p0
.end method
