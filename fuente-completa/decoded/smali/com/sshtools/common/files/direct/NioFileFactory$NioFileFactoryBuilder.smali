.class public final Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;
.super Ljava/lang/Object;
.source "NioFileFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/files/direct/NioFileFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NioFileFactoryBuilder"
.end annotation


# instance fields
.field private home:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field public mapOwnership:Z

.field private sandbox:Z


# direct methods
.method static bridge synthetic -$$Nest$fgethome(Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->home:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsandbox(Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->sandbox:Z

    return p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->home:Ljava/util/Optional;

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->sandbox:Z

    return-void
.end method

.method public static create()Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;
    .locals 1

    .line 49
    new-instance v0, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;

    invoke-direct {v0}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sshtools/common/files/direct/NioFileFactory;
    .locals 2

    .line 123
    new-instance v0, Lcom/sshtools/common/files/direct/NioFileFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sshtools/common/files/direct/NioFileFactory;-><init>(Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;Lcom/sshtools/common/files/direct/NioFileFactory-IA;)V

    return-object v0
.end method

.method public withCurrentDirectoryAsHome()Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;
    .locals 2

    .line 114
    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->withHome(Ljava/nio/file/Path;)Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withHome(Ljava/io/File;)Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;
    .locals 0

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->withHome(Ljava/nio/file/Path;)Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withHome(Ljava/nio/file/Path;)Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;
    .locals 0

    .line 91
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->home:Ljava/util/Optional;

    return-object p0
.end method

.method public withMapOwnership()Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->mapOwnership:Z

    return-object p0
.end method

.method public withSandbox(Z)Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->sandbox:Z

    return-object p0
.end method

.method public withoutSandbox()Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->withSandbox(Z)Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;

    move-result-object v0

    return-object v0
.end method
