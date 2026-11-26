.class public Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;
.super Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;
.source "PullTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/PullTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PullTaskBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder<",
        "Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;",
        "Lcom/sshtools/client/tasks/PullTask;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private localFolder:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetlocalFolder(Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->localFolder:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaths(Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->paths:Ljava/util/List;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;-><init>()V

    .line 75
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->localFolder:Ljava/util/Optional;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->paths:Ljava/util/List;

    return-void
.end method

.method public static create()Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;
    .locals 1

    .line 87
    new-instance v0, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addPaths(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->paths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addPaths([Ljava/lang/String;)Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;
    .locals 0

    .line 112
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->addPaths(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic build()Lcom/sshtools/client/tasks/AbstractConnectionTask;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->build()Lcom/sshtools/client/tasks/PullTask;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sshtools/client/tasks/PullTask;
    .locals 1

    .line 186
    new-instance v0, Lcom/sshtools/client/tasks/PullTask;

    invoke-direct {v0, p0}, Lcom/sshtools/client/tasks/PullTask;-><init>(Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;)V

    return-object v0
.end method

.method public withLocalFolder(Ljava/lang/String;)Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;
    .locals 1

    if-eqz p1, :cond_1

    .line 150
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 151
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    goto :goto_1

    .line 150
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->withLocalFolder(Ljava/util/Optional;)Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withLocalFolder(Ljava/nio/file/Path;)Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;
    .locals 0

    .line 161
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->withLocalFolder(Ljava/util/Optional;)Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withLocalFolder(Ljava/util/Optional;)Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->localFolder:Ljava/util/Optional;

    return-object p0
.end method

.method public withPaths(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->addPaths(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs withPaths([Ljava/lang/String;)Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->addPaths(Ljava/util/Collection;)Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;

    move-result-object p1

    return-object p1
.end method
