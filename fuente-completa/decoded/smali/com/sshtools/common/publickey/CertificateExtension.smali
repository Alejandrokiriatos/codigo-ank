.class public abstract Lcom/sshtools/common/publickey/CertificateExtension;
.super Lcom/sshtools/common/publickey/EncodedExtension;
.source "CertificateExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/publickey/CertificateExtension$Builder;
    }
.end annotation


# static fields
.field static final NO_PRESENCE_REQUIRED:Lcom/sshtools/common/publickey/CertificateExtension;

.field static final PERMIT_AGENT_FORWARDING:Lcom/sshtools/common/publickey/CertificateExtension;

.field static final PERMIT_PORT_FORWARDING:Lcom/sshtools/common/publickey/CertificateExtension;

.field static final PERMIT_PTY:Lcom/sshtools/common/publickey/CertificateExtension;

.field static final PERMIT_USER_RC:Lcom/sshtools/common/publickey/CertificateExtension;

.field static final PERMIT_X11_FORWARDING:Lcom/sshtools/common/publickey/CertificateExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/sshtools/common/publickey/NamedCertificateExtension;

    const-string v1, "no-presence-required"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/publickey/NamedCertificateExtension;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/sshtools/common/publickey/CertificateExtension;->NO_PRESENCE_REQUIRED:Lcom/sshtools/common/publickey/CertificateExtension;

    .line 31
    new-instance v0, Lcom/sshtools/common/publickey/NamedCertificateExtension;

    const-string v1, "permit-X11-forwarding"

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/publickey/NamedCertificateExtension;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/sshtools/common/publickey/CertificateExtension;->PERMIT_X11_FORWARDING:Lcom/sshtools/common/publickey/CertificateExtension;

    .line 32
    new-instance v0, Lcom/sshtools/common/publickey/NamedCertificateExtension;

    const-string v1, "permit-agent-forwarding"

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/publickey/NamedCertificateExtension;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/sshtools/common/publickey/CertificateExtension;->PERMIT_AGENT_FORWARDING:Lcom/sshtools/common/publickey/CertificateExtension;

    .line 33
    new-instance v0, Lcom/sshtools/common/publickey/NamedCertificateExtension;

    const-string v1, "permit-port-forwarding"

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/publickey/NamedCertificateExtension;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/sshtools/common/publickey/CertificateExtension;->PERMIT_PORT_FORWARDING:Lcom/sshtools/common/publickey/CertificateExtension;

    .line 34
    new-instance v0, Lcom/sshtools/common/publickey/NamedCertificateExtension;

    const-string v1, "permit-pty"

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/publickey/NamedCertificateExtension;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/sshtools/common/publickey/CertificateExtension;->PERMIT_PTY:Lcom/sshtools/common/publickey/CertificateExtension;

    .line 35
    new-instance v0, Lcom/sshtools/common/publickey/NamedCertificateExtension;

    const-string v1, "permit-user-rc"

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/publickey/NamedCertificateExtension;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/sshtools/common/publickey/CertificateExtension;->PERMIT_USER_RC:Lcom/sshtools/common/publickey/CertificateExtension;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sshtools/common/publickey/EncodedExtension;-><init>()V

    return-void
.end method

.method public static createKnownExtension(Ljava/lang/String;[B)Lcom/sshtools/common/publickey/CertificateExtension;
    .locals 3

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "permit-agent-forwarding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "permit-X11-forwarding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "permit-user-rc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "no-presence-required"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "force-command"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "permit-pty"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "source-address"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_0

    :sswitch_7
    const-string v0, "permit-port-forwarding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 53
    new-instance v0, Lcom/sshtools/common/publickey/DefaultCertificateExtension;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/publickey/DefaultCertificateExtension;-><init>(Ljava/lang/String;[B)V

    return-object v0

    .line 51
    :pswitch_0
    new-instance v0, Lcom/sshtools/common/publickey/StringCertificateExtension;

    invoke-direct {v0, p0, p1, v1}, Lcom/sshtools/common/publickey/StringCertificateExtension;-><init>(Ljava/lang/String;[BZ)V

    return-object v0

    .line 48
    :pswitch_1
    new-instance p1, Lcom/sshtools/common/publickey/NamedCertificateExtension;

    invoke-direct {p1, p0, v1}, Lcom/sshtools/common/publickey/NamedCertificateExtension;-><init>(Ljava/lang/String;Z)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5fab95e9 -> :sswitch_7
        -0x56f363be -> :sswitch_6
        -0x1eebd9bd -> :sswitch_5
        0x1eb43269 -> :sswitch_4
        0x3f91bb25 -> :sswitch_3
        0x58264fc1 -> :sswitch_2
        0x59d40364 -> :sswitch_1
        0x6496b237 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
