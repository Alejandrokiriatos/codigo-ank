.class public Lcom/sshtools/common/sftp/SftpFile;
.super Ljava/lang/Object;
.source "SftpFile.java"


# instance fields
.field absolutePath:Ljava/lang/String;

.field attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

.field filename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFile;->absolutePath:Ljava/lang/String;

    const/16 v0, 0x2f

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFile;->filename:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_1
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFile;->filename:Ljava/lang/String;

    .line 64
    :goto_0
    iput-object p2, p0, Lcom/sshtools/common/sftp/SftpFile;->attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFile;->absolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFile;->attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFile;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFile;->absolutePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
