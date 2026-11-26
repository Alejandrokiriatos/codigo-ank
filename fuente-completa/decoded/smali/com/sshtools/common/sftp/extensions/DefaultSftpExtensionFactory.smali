.class public Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;
.super Ljava/lang/Object;
.source "DefaultSftpExtensionFactory.java"

# interfaces
.implements Lcom/sshtools/common/sftp/SftpExtensionFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "3.1.0"
.end annotation


# instance fields
.field extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sftp/SftpExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    return-void
.end method

.method public varargs constructor <init>([Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    .line 52
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 54
    sget-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->MD5_FILE_HASH:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    new-instance v1, Lcom/sshtools/common/sftp/extensions/MD5FileExtension;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/extensions/MD5FileExtension;-><init>()V

    const-string v2, "md5-hash"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    new-instance v1, Lcom/sshtools/common/sftp/extensions/MD5HandleExtension;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/extensions/MD5HandleExtension;-><init>()V

    const-string v2, "md5-hash-handle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    sget-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->POSIX_RENAME:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    new-instance v1, Lcom/sshtools/common/sftp/extensions/PosixRenameExtension;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/extensions/PosixRenameExtension;-><init>()V

    const-string v2, "posix-rename@openssh.com"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1
    sget-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->COPY_FILE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    new-instance v1, Lcom/sshtools/common/sftp/extensions/CopyFileSftpExtension;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/extensions/CopyFileSftpExtension;-><init>()V

    const-string v2, "copy-file"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_2
    sget-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->OPEN_DIRECTORY_WITH_FILTER:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    new-instance v1, Lcom/sshtools/common/sftp/extensions/filter/OpenDirectoryWithFilterExtension;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/extensions/filter/OpenDirectoryWithFilterExtension;-><init>()V

    const-string v2, "open-directory-with-filter@sshtools.com"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_3
    sget-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->COPY_DATA:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    new-instance v1, Lcom/sshtools/common/sftp/extensions/CopyDataSftpExtension;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/extensions/CopyDataSftpExtension;-><init>()V

    const-string v2, "copy-data"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_4
    sget-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->CHECK_FILE_NAME:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    new-instance v1, Lcom/sshtools/common/sftp/extensions/FilenameHashingExtension;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/extensions/FilenameHashingExtension;-><init>()V

    const-string v2, "check-file-name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_5
    sget-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->CHECK_FILE_HANDLE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 74
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    new-instance v1, Lcom/sshtools/common/sftp/extensions/FileHandleHashingExtension;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/extensions/FileHandleHashingExtension;-><init>()V

    const-string v2, "check-file-handle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_6
    sget-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->OPEN_PART_FILE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    new-instance v1, Lcom/sshtools/common/sftp/extensions/multipart/OpenMultipartFileExtension;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/extensions/multipart/OpenMultipartFileExtension;-><init>()V

    const-string v2, "open-part-file@sshtools.com"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_7
    sget-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->CREATE_MULTIPART_FILE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 80
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    new-instance v1, Lcom/sshtools/common/sftp/extensions/multipart/CreateMultipartFileExtension;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/extensions/multipart/CreateMultipartFileExtension;-><init>()V

    const-string v2, "create-multipart-file@sshtools.com"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_8
    sget-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->HARDLINK:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 83
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    new-instance v1, Lcom/sshtools/common/sftp/extensions/HardLinkExtension;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/extensions/HardLinkExtension;-><init>()V

    const-string v2, "hardlink@openssh.com"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_9
    sget-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->STATVFS:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 86
    iget-object p1, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    new-instance v0, Lcom/sshtools/common/sftp/extensions/StatVFSExtension;

    invoke-direct {v0}, Lcom/sshtools/common/sftp/extensions/StatVFSExtension;-><init>()V

    const-string v1, "statvfs@openssh.com"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method


# virtual methods
.method public getExtension(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpExtension;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sftp/SftpExtension;

    return-object p1
.end method

.method public getExtensions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/sftp/SftpExtension;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/DefaultSftpExtensionFactory;->extensions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
