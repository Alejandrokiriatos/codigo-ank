.class public abstract Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;
.super Ljava/lang/Object;
.source "AbstractConnectionTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/AbstractConnectionTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractConnectionTaskBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder<",
        "TB;TT;>;T:",
        "Lcom/sshtools/client/tasks/AbstractConnectionTask;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected clientSupplier:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Lcom/sshtools/client/SshClient;",
            ">;>;"
        }
    .end annotation
.end field

.field protected connection:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;->clientSupplier:Ljava/util/Optional;

    .line 36
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;->connection:Ljava/util/Optional;

    return-void
.end method

.method static synthetic lambda$withClient$0(Lcom/sshtools/client/SshClient;Ljava/lang/Integer;)Lcom/sshtools/client/SshClient;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public abstract build()Lcom/sshtools/client/tasks/AbstractConnectionTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public withClient(Lcom/sshtools/client/SshClient;)Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/SshClient;",
            ")TB;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/sshtools/client/SshClient;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;->withClients(Ljava/util/function/Function;)Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withClients(Ljava/util/function/Function;)Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Lcom/sshtools/client/SshClient;",
            ">;)TB;"
        }
    .end annotation

    .line 74
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;->clientSupplier:Ljava/util/Optional;

    return-object p0
.end method

.method public withConnection(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ")TB;"
        }
    .end annotation

    .line 58
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;->connection:Ljava/util/Optional;

    return-object p0
.end method
