.class public final Lcom/sshtools/common/files/direct/NioFileFactory;
.super Ljava/lang/Object;
.source "NioFileFactory.java"

# interfaces
.implements Lcom/sshtools/common/files/AbstractFileFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/files/AbstractFileFactory<",
        "Lcom/sshtools/common/files/direct/NioFile;",
        ">;"
    }
.end annotation


# instance fields
.field private final group:Ljava/lang/String;

.field private final home:Ljava/nio/file/Path;

.field private final sandbox:Z

.field private final username:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;)V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/sshtools/common/files/direct/NioFileFactory;->username:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/sshtools/common/files/direct/NioFileFactory;->group:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->-$$Nest$fgethome(Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/common/files/direct/NioFileFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sshtools/common/files/direct/NioFileFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    iput-object v0, p0, Lcom/sshtools/common/files/direct/NioFileFactory;->home:Ljava/nio/file/Path;

    .line 135
    invoke-static {p1}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->-$$Nest$fgetsandbox(Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sshtools/common/files/direct/NioFileFactory;->sandbox:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;Lcom/sshtools/common/files/direct/NioFileFactory-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/common/files/direct/NioFileFactory;-><init>(Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;)V

    return-void
.end method

.method static synthetic lambda$new$0()Ljava/nio/file/Path;
    .locals 2

    .line 134
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultPath()Lcom/sshtools/common/files/AbstractFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/sshtools/common/files/direct/NioFileFactory;->getDefaultPath()Lcom/sshtools/common/files/direct/NioFile;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPath()Lcom/sshtools/common/files/direct/NioFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sshtools/common/files/direct/NioFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/direct/NioFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/direct/NioFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/direct/NioFile;

    move-result-object p1

    return-object p1
.end method

.method public getFile(Ljava/lang/String;)Lcom/sshtools/common/files/direct/NioFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    new-instance v0, Lcom/sshtools/common/files/direct/NioFile;

    iget-object v1, p0, Lcom/sshtools/common/files/direct/NioFileFactory;->home:Ljava/nio/file/Path;

    iget-boolean v2, p0, Lcom/sshtools/common/files/direct/NioFileFactory;->sandbox:Z

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/sshtools/common/files/direct/NioFile;-><init>(Ljava/lang/String;Lcom/sshtools/common/files/direct/NioFileFactory;Ljava/nio/file/Path;Z)V

    return-object v0
.end method

.method home()Ljava/nio/file/Path;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFileFactory;->home:Ljava/nio/file/Path;

    return-object v0
.end method

.method isSandboxed()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/sshtools/common/files/direct/NioFileFactory;->sandbox:Z

    return v0
.end method

.method public populateEvent(Lcom/sshtools/common/events/Event;)Lcom/sshtools/common/events/Event;
    .locals 0

    return-object p1
.end method
