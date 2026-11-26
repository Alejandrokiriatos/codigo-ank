.class public final Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;
.super Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;
.source "StatTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/StatTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatTaskBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder<",
        "Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;",
        "Lcom/sshtools/client/tasks/StatTask;",
        ">;"
    }
.end annotation


# instance fields
.field private remote:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetremote(Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;->remote:Ljava/util/Optional;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;-><init>()V

    .line 49
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;->remote:Ljava/util/Optional;

    return-void
.end method

.method public static create()Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;
    .locals 1

    .line 60
    new-instance v0, Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$withRemotePath$0(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    const/4 v0, 0x0

    .line 70
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sshtools/client/tasks/AbstractConnectionTask;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;->build()Lcom/sshtools/client/tasks/StatTask;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sshtools/client/tasks/StatTask;
    .locals 2

    .line 106
    new-instance v0, Lcom/sshtools/client/tasks/StatTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sshtools/client/tasks/StatTask;-><init>(Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;Lcom/sshtools/client/tasks/StatTask-IA;)V

    return-object v0
.end method

.method public withRemote(Ljava/nio/file/Path;)Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;
    .locals 0

    .line 80
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;->withRemote(Ljava/util/Optional;)Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withRemote(Ljava/util/Optional;)Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;->remote:Ljava/util/Optional;

    return-object p0
.end method

.method public withRemotePath(Ljava/lang/String;)Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;
    .locals 0

    .line 101
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;->withRemotePath(Ljava/util/Optional;)Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withRemotePath(Ljava/util/Optional;)Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;->withRemote(Ljava/nio/file/Path;)Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;

    move-result-object p1

    return-object p1
.end method
