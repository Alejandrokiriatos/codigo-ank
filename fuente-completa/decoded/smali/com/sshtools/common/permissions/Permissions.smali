.class public Lcom/sshtools/common/permissions/Permissions;
.super Ljava/lang/Object;
.source "Permissions.java"


# instance fields
.field protected permissions:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/sshtools/common/permissions/Permissions;->permissions:J

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4

    .line 38
    iget-wide v0, p0, Lcom/sshtools/common/permissions/Permissions;->permissions:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/permissions/Permissions;->permissions:J

    return-void
.end method

.method public check(I)Z
    .locals 4

    .line 46
    iget-wide v0, p0, Lcom/sshtools/common/permissions/Permissions;->permissions:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public remove(I)V
    .locals 4

    .line 42
    iget-wide v0, p0, Lcom/sshtools/common/permissions/Permissions;->permissions:J

    not-int p1, p1

    int-to-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/permissions/Permissions;->permissions:J

    return-void
.end method
