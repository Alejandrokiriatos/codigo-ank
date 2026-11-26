.class Lcom/sshtools/common/policy/FileSystemPolicy$CachingFileFactory;
.super Ljava/lang/Object;
.source "FileSystemPolicy.java"

# interfaces
.implements Lcom/sshtools/common/policy/FileFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/policy/FileSystemPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CachingFileFactory"
.end annotation


# static fields
.field private static final CACHED_FILE_FACTORY:Ljava/lang/String; = "cachedFileFactory"


# instance fields
.field fileFactory:Lcom/sshtools/common/policy/FileFactory;

.field final synthetic this$0:Lcom/sshtools/common/policy/FileSystemPolicy;


# direct methods
.method constructor <init>(Lcom/sshtools/common/policy/FileSystemPolicy;Lcom/sshtools/common/policy/FileFactory;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/sshtools/common/policy/FileSystemPolicy$CachingFileFactory;->this$0:Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/sshtools/common/policy/FileSystemPolicy$CachingFileFactory;->fileFactory:Lcom/sshtools/common/policy/FileFactory;

    return-void
.end method


# virtual methods
.method public getFileFactory(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFileFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ")",
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 256
    const-string v0, "cachedFileFactory"

    invoke-interface {p1, v0}, Lcom/sshtools/common/ssh/SshConnection;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/files/AbstractFileFactory;

    .line 257
    invoke-static {v1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/sshtools/common/policy/FileSystemPolicy$CachingFileFactory;->fileFactory:Lcom/sshtools/common/policy/FileFactory;

    invoke-static {v1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/sshtools/common/policy/FileSystemPolicy$CachingFileFactory;->fileFactory:Lcom/sshtools/common/policy/FileFactory;

    invoke-interface {v1, p1}, Lcom/sshtools/common/policy/FileFactory;->getFileFactory(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object v1

    .line 262
    invoke-interface {p1, v0, v1}, Lcom/sshtools/common/ssh/SshConnection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 259
    :cond_0
    new-instance p1, Lcom/sshtools/common/permissions/PermissionDeniedException;

    const-string v0, "Invalid file system configuration"

    invoke-direct {p1, v0}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v1
.end method
