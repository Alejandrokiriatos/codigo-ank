.class public Lcom/sshtools/common/shell/ShellPolicy;
.super Lcom/sshtools/common/permissions/Permissions;
.source "ShellPolicy.java"


# static fields
.field public static final EXEC:I = 0x2000

.field public static final SHELL:I = 0x1000

.field public static final SUBSYSTEM:I = 0x4000


# instance fields
.field protected sessionMaxPacketSize:I

.field protected sessionMaxWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

.field protected sessionMinWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

.field sessionTimeoutSeconds:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/sshtools/common/permissions/Permissions;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/sshtools/common/shell/ShellPolicy;->sessionTimeoutSeconds:I

    const/high16 v0, 0x10000

    .line 36
    iput v0, p0, Lcom/sshtools/common/shell/ShellPolicy;->sessionMaxPacketSize:I

    .line 37
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    const-wide/32 v1, 0xfa000

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    iput-object v0, p0, Lcom/sshtools/common/shell/ShellPolicy;->sessionMaxWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 38
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    const-wide/32 v1, 0x20000

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    iput-object v0, p0, Lcom/sshtools/common/shell/ShellPolicy;->sessionMinWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    const-wide/16 v0, 0x7000

    .line 41
    iput-wide v0, p0, Lcom/sshtools/common/shell/ShellPolicy;->permissions:J

    return-void
.end method


# virtual methods
.method protected varargs assertPermission(Lcom/sshtools/common/ssh/SshConnection;I[Ljava/lang/String;)Z
    .locals 0

    .line 47
    invoke-virtual {p0, p2}, Lcom/sshtools/common/shell/ShellPolicy;->check(I)Z

    move-result p1

    return p1
.end method

.method public final varargs checkPermission(Lcom/sshtools/common/ssh/SshConnection;I[Ljava/lang/String;)Z
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/sshtools/common/shell/ShellPolicy;->assertPermission(Lcom/sshtools/common/ssh/SshConnection;I[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getSessionMaxPacketSize()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/sshtools/common/shell/ShellPolicy;->sessionMaxPacketSize:I

    return v0
.end method

.method public getSessionMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sshtools/common/shell/ShellPolicy;->sessionMaxWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    return-object v0
.end method

.method public getSessionMinWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sshtools/common/shell/ShellPolicy;->sessionMinWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    return-object v0
.end method

.method public getSessionTimeout()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/sshtools/common/shell/ShellPolicy;->sessionTimeoutSeconds:I

    return v0
.end method

.method public getSessionTimeoutSeconds()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/sshtools/common/shell/ShellPolicy;->sessionTimeoutSeconds:I

    return v0
.end method

.method public setSessionMaxPacketSize(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/sshtools/common/shell/ShellPolicy;->sessionMaxPacketSize:I

    return-void
.end method

.method public setSessionMaxWindowSize(Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/sshtools/common/shell/ShellPolicy;->sessionMaxWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    return-void
.end method

.method public setSessionMinWindowSize(Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/sshtools/common/shell/ShellPolicy;->sessionMinWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    return-void
.end method

.method public setSessionTimeout(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/sshtools/common/shell/ShellPolicy;->sessionTimeoutSeconds:I

    return-void
.end method

.method public setSessionTimeoutSeconds(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/sshtools/common/shell/ShellPolicy;->sessionTimeoutSeconds:I

    return-void
.end method
