.class public final synthetic Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/nio/file/attribute/FileTime;

    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->lambda$toByteArray$12(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
