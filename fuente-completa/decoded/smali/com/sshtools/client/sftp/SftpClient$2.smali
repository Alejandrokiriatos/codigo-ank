.class synthetic Lcom/sshtools/client/sftp/SftpClient$2;
.super Ljava/lang/Object;
.source "SftpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/sftp/SftpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sshtools$client$sftp$RemoteHash:[I

.field static final synthetic $SwitchMap$java$nio$file$FileVisitResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 3942
    invoke-static {}, Ljava/nio/file/FileVisitResult;->values()[Ljava/nio/file/FileVisitResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sshtools/client/sftp/SftpClient$2;->$SwitchMap$java$nio$file$FileVisitResult:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Ljava/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

    invoke-virtual {v2}, Ljava/nio/file/FileVisitResult;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sshtools/client/sftp/SftpClient$2;->$SwitchMap$java$nio$file$FileVisitResult:[I

    sget-object v3, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    invoke-virtual {v3}, Ljava/nio/file/FileVisitResult;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 2784
    :catch_1
    invoke-static {}, Lcom/sshtools/client/sftp/RemoteHash;->values()[Lcom/sshtools/client/sftp/RemoteHash;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sshtools/client/sftp/SftpClient$2;->$SwitchMap$com$sshtools$client$sftp$RemoteHash:[I

    :try_start_2
    sget-object v3, Lcom/sshtools/client/sftp/RemoteHash;->md5:Lcom/sshtools/client/sftp/RemoteHash;

    invoke-virtual {v3}, Lcom/sshtools/client/sftp/RemoteHash;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/sshtools/client/sftp/SftpClient$2;->$SwitchMap$com$sshtools$client$sftp$RemoteHash:[I

    sget-object v2, Lcom/sshtools/client/sftp/RemoteHash;->sha1:Lcom/sshtools/client/sftp/RemoteHash;

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/RemoteHash;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/sshtools/client/sftp/SftpClient$2;->$SwitchMap$com$sshtools$client$sftp$RemoteHash:[I

    sget-object v1, Lcom/sshtools/client/sftp/RemoteHash;->sha256:Lcom/sshtools/client/sftp/RemoteHash;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/RemoteHash;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/sshtools/client/sftp/SftpClient$2;->$SwitchMap$com$sshtools$client$sftp$RemoteHash:[I

    sget-object v1, Lcom/sshtools/client/sftp/RemoteHash;->sha512:Lcom/sshtools/client/sftp/RemoteHash;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/RemoteHash;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
