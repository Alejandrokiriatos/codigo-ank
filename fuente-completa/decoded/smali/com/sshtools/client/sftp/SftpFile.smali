.class public final Lcom/sshtools/client/sftp/SftpFile;
.super Ljava/lang/Object;
.source "SftpFile.java"


# instance fields
.field private final absolutePath:Ljava/lang/String;

.field private final attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

.field private final filename:Ljava/lang/String;

.field private final longname:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 43
    iput-object p2, p0, Lcom/sshtools/client/sftp/SftpFile;->attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    .line 44
    iput-object p3, p0, Lcom/sshtools/client/sftp/SftpFile;->longname:Ljava/lang/String;

    .line 48
    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 49
    iput-object p2, p0, Lcom/sshtools/client/sftp/SftpFile;->filename:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_0
    const-string p3, "maverick.disableSlashRemoval"

    invoke-static {p3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/16 p2, 0x2f

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 p3, -0x1

    if-le p2, p3, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/client/sftp/SftpFile;->filename:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_2
    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpFile;->filename:Ljava/lang/String;

    .line 66
    :goto_0
    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpFile;->absolutePath:Ljava/lang/String;

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 41
    throw p1
.end method


# virtual methods
.method public attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFile;->attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 95
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 97
    :cond_2
    check-cast p1, Lcom/sshtools/client/sftp/SftpFile;

    .line 98
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFile;->absolutePath:Ljava/lang/String;

    iget-object p1, p1, Lcom/sshtools/client/sftp/SftpFile;->absolutePath:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFile;->absolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFile;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getLongname()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFile;->longname:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFile;->absolutePath:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFile;->absolutePath:Ljava/lang/String;

    return-object v0
.end method
