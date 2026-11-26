.class public final synthetic Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder$$ExternalSyntheticLambda2;
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
    .locals 2

    .line 0
    check-cast p1, Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->$r8$lambda$3FmKeWA__yzaspyT-olkIzvvBdM(Lcom/sshtools/common/util/UnsignedInteger32;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
