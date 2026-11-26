.class final Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;
.super Ljava/io/ByteArrayOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Buffer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;->buf:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/MessageSignerAdapter$Buffer;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
