.class Lcom/sshtools/common/util/ExpiringConcurrentHashMap$1;
.super Ljava/lang/Object;
.source "ExpiringConcurrentHashMap.java"

# interfaces
.implements Lcom/sshtools/common/util/ExpiringConcurrentHashMap$ExpiryConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/util/ExpiringConcurrentHashMap;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/util/ExpiringConcurrentHashMap;

.field final synthetic val$expiryInMillis:J


# direct methods
.method constructor <init>(Lcom/sshtools/common/util/ExpiringConcurrentHashMap;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap$1;->this$0:Lcom/sshtools/common/util/ExpiringConcurrentHashMap;

    iput-wide p2, p0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap$1;->val$expiryInMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public expiresInMillis()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/sshtools/common/util/ExpiringConcurrentHashMap$1;->val$expiryInMillis:J

    return-wide v0
.end method
