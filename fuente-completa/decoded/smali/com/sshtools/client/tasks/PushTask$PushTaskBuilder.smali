.class public Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
.super Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
.source "PushTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/PushTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushTaskBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder<",
        "Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;",
        "Lcom/sshtools/client/tasks/PushTask;",
        "Lcom/sshtools/common/files/AbstractFile;",
        ">;"
    }
.end annotation


# instance fields
.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/files/AbstractFile;",
            ">;"
        }
    .end annotation
.end field

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private remoteFolder:Ljava/util/Optional;
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

.method static bridge synthetic -$$Nest$fgetfiles(Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->files:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaths(Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->paths:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetremoteFolder(Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->remoteFolder:Ljava/util/Optional;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;-><init>()V

    .line 81
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->remoteFolder:Ljava/util/Optional;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->paths:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->files:Ljava/util/List;

    return-void
.end method

.method public static create()Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    .locals 1

    .line 95
    new-instance v0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$addFilePaths$0(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    const/4 v0, 0x0

    .line 107
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAbstactFiles(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/files/AbstractFile;",
            ">;)",
            "Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addFilePaths(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->paths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addFiles(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->paths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addPaths(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->paths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/sshtools/client/tasks/AbstractConnectionTask;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->build()Lcom/sshtools/client/tasks/PushTask;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sshtools/client/tasks/PushTask;
    .locals 1

    .line 290
    new-instance v0, Lcom/sshtools/client/tasks/PushTask;

    invoke-direct {v0, p0}, Lcom/sshtools/client/tasks/PushTask;-><init>(Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;)V

    return-object v0
.end method

.method public withAbstractFiles(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/files/AbstractFile;",
            ">;)",
            "Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->addAbstactFiles(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs withAbstractFiles([Lcom/sshtools/common/files/AbstractFile;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    .locals 0

    .line 230
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->withAbstractFiles(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withFilePaths(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->addFilePaths(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs withFiles([Ljava/io/File;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 203
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->addFiles(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs withFilesPaths([Ljava/lang/String;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 244
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->addFilePaths(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withPaths(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->addPaths(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs withPaths([Ljava/nio/file/Path;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 217
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->addPaths(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withRemoteFolder(Ljava/lang/String;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    .locals 1

    if-eqz p1, :cond_1

    .line 254
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 255
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    goto :goto_1

    .line 254
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->withRemoteFolder(Ljava/util/Optional;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withRemoteFolder(Ljava/nio/file/Path;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    .locals 0

    .line 265
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->withRemoteFolder(Ljava/util/Optional;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withRemoteFolder(Ljava/util/Optional;)Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;"
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->remoteFolder:Ljava/util/Optional;

    return-object p0
.end method
