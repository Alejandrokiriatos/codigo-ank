.class public final synthetic Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/common/sftp/SftpFileAttributes;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda8;->f$0:Lcom/sshtools/common/sftp/SftpFileAttributes;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda8;->f$0:Lcom/sshtools/common/sftp/SftpFileAttributes;

    check-cast p1, Ljava/nio/file/attribute/FileTime;

    invoke-static {v0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->$r8$lambda$-sIwF1RVhWVZkGRnVoBbQSj-4W8(Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
