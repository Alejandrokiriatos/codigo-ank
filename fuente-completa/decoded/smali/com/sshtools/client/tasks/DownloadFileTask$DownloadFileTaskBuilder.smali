.class public final Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;
.super Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;
.source "DownloadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/DownloadFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadFileTaskBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder<",
        "Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;",
        "Lcom/sshtools/client/tasks/DownloadFileTask;",
        ">;"
    }
.end annotation


# instance fields
.field private local:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

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
.method public static synthetic $r8$lambda$Vf-23ZqUL0aPMMTTCCeUW08P5sg(Ljava/io/File;)Ljava/nio/file/Path;
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocal(Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->local:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetremote(Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->remote:Ljava/util/Optional;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;-><init>()V

    .line 49
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->remote:Ljava/util/Optional;

    .line 50
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->local:Ljava/util/Optional;

    return-void
.end method

.method public static create()Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;
    .locals 1

    .line 61
    new-instance v0, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$withRemotePath$0(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    const/4 v0, 0x0

    .line 115
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sshtools/client/tasks/AbstractConnectionTask;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->build()Lcom/sshtools/client/tasks/DownloadFileTask;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sshtools/client/tasks/DownloadFileTask;
    .locals 2

    .line 151
    new-instance v0, Lcom/sshtools/client/tasks/DownloadFileTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sshtools/client/tasks/DownloadFileTask;-><init>(Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;Lcom/sshtools/client/tasks/DownloadFileTask-IA;)V

    return-object v0
.end method

.method public withLocal(Ljava/nio/file/Path;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;
    .locals 0

    .line 105
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->withLocal(Ljava/util/Optional;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withLocal(Ljava/util/Optional;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->local:Ljava/util/Optional;

    return-object p0
.end method

.method public withLocalFile(Ljava/io/File;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;
    .locals 0

    .line 94
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->withLocal(Ljava/nio/file/Path;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withLocalFile(Ljava/util/Optional;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->withLocal(Ljava/util/Optional;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withRemote(Ljava/nio/file/Path;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;
    .locals 0

    .line 125
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->withRemote(Ljava/util/Optional;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withRemote(Ljava/util/Optional;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->remote:Ljava/util/Optional;

    return-object p0
.end method

.method public withRemotePath(Ljava/lang/String;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;
    .locals 0

    .line 146
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->withRemotePath(Ljava/util/Optional;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withRemotePath(Ljava/util/Optional;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->withRemote(Ljava/nio/file/Path;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    move-result-object p1

    return-object p1
.end method
