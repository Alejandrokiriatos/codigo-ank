.class public abstract Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;
.super Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;
.source "AbstractSessionTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/AbstractSessionTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AbstractSessionTaskBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder<",
        "TB;TSC;TTT;>;SC:",
        "Lcom/sshtools/client/AbstractSessionChannel;",
        "TT:",
        "Lcom/sshtools/client/tasks/AbstractSessionTask<",
        "TSC;>;>",
        "Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder<",
        "TB;TTT;>;"
    }
.end annotation


# instance fields
.field private future:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/ssh/ChannelRequestFuture;",
            ">;"
        }
    .end annotation
.end field

.field private onClose:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/function/Consumer<",
            "TSC;>;>;"
        }
    .end annotation
.end field

.field private session:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/function/Function<",
            "Lcom/sshtools/common/ssh/SshConnection;",
            "TSC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetfuture(Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;->future:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonClose(Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;->onClose:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsession(Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;->session:Ljava/util/Optional;

    return-object p0
.end method

.method protected constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;-><init>()V

    .line 52
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;->session:Ljava/util/Optional;

    .line 53
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;->future:Ljava/util/Optional;

    .line 54
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;->onClose:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final onClose(Ljava/util/function/Consumer;)Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TSC;>;)",
            "Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder<",
            "TB;TSC;TTT;>;"
        }
    .end annotation

    .line 87
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;->onClose:Ljava/util/Optional;

    return-object p0
.end method

.method public final withFuture(Lcom/sshtools/common/ssh/ChannelRequestFuture;)Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/ChannelRequestFuture;",
            ")TB;"
        }
    .end annotation

    .line 76
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;->future:Ljava/util/Optional;

    return-object p0
.end method

.method public final withSession(Ljava/util/function/Function;)Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/sshtools/common/ssh/SshConnection;",
            "TSC;>;)TB;"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;->session:Ljava/util/Optional;

    return-object p0
.end method
