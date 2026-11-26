.class Lorg/bouncycastle/cms/jcajce/JceAADStream;
.super Ljava/io/OutputStream;


# instance fields
.field private final SINGLE_BYTE:[B

.field private cipher:Ljavax/crypto/Cipher;


# direct methods
.method constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceAADStream;->SINGLE_BYTE:[B

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceAADStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceAADStream;->SINGLE_BYTE:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceAADStream;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceAADStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    return-void
.end method
