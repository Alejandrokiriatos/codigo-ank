.class public final synthetic Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/common/sftp/SftpFileAttributes;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda7;->f$0:Lcom/sshtools/common/sftp/SftpFileAttributes;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda7;->f$0:Lcom/sshtools/common/sftp/SftpFileAttributes;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->lambda$toByteArray$7$com-sshtools-common-sftp-SftpFileAttributes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
