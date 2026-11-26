.class public Lcom/foxdebug/system/Ui$Icons;
.super Ljava/lang/Object;
.source "Ui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/system/Ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Icons"
.end annotation


# static fields
.field public static final DESKTOP:Ljava/lang/String; = "\ue90a"

.field public static final DEVICES:Ljava/lang/String; = "\ue907"

.field public static final EXIT:Ljava/lang/String; = "\ue902"

.field private static final FONT_PATH:Ljava/lang/String; = "font/icon.ttf"

.field public static final LAPTOP:Ljava/lang/String; = "\ue90d"

.field public static final LOGO:Ljava/lang/String; = "\ue922"

.field public static final MORE_VERT:Ljava/lang/String; = "\ue91a"

.field public static final NO_CACHE:Ljava/lang/String; = "\ue901"

.field public static final OPEN_IN_BROWSER:Ljava/lang/String; = "\ue91f"

.field public static final PHONE_ANDROID:Ljava/lang/String; = "\ue90e"

.field public static final PHONE_APPLE:Ljava/lang/String; = "\ue928"

.field public static final REFRESH:Ljava/lang/String; = "\ue91b"

.field public static final TABLET_ANDROID:Ljava/lang/String; = "\ue90f"

.field public static final TABLET_APPLE:Ljava/lang/String; = "\ue92a"

.field public static final TERMINAL:Ljava/lang/String; = "\ue923"

.field public static final TUNE:Ljava/lang/String; = "\ue927"

.field public static final TV:Ljava/lang/String; = "\ue929"

.field private static color:I = 0x0

.field private static paint:Landroid/graphics/Paint; = null

.field private static size:I = 0x18


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/foxdebug/system/Ui$Icons;->color:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 83
    sget v0, Lcom/foxdebug/system/Ui$Icons;->size:I

    sget v1, Lcom/foxdebug/system/Ui$Icons;->color:I

    invoke-static {p0, p1, v0, v1}, Lcom/foxdebug/system/Ui$Icons;->get(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 92
    sget v0, Lcom/foxdebug/system/Ui$Icons;->size:I

    invoke-static {p0, p1, v0, p2}, Lcom/foxdebug/system/Ui$Icons;->get(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 46
    sget-object v0, Lcom/foxdebug/system/Ui$Icons;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/foxdebug/system/Ui$Icons;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    sget-object v0, Lcom/foxdebug/system/Ui$Icons;->paint:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "font/icon.ttf"

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    .line 49
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 52
    sget-object p0, Lcom/foxdebug/system/Ui$Icons;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 55
    :cond_0
    sget-object p0, Lcom/foxdebug/system/Ui$Icons;->paint:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    sget-object p0, Lcom/foxdebug/system/Ui$Icons;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    sget-object p0, Lcom/foxdebug/system/Ui$Icons;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    move-result p0

    neg-float p0, p0

    .line 59
    sget-object p2, Lcom/foxdebug/system/Ui$Icons;->paint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, p1, p3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p2

    float-to-int p2, p2

    .line 60
    sget-object p3, Lcom/foxdebug/system/Ui$Icons;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->descent()F

    move-result p3

    add-float/2addr p3, p0

    float-to-int p3, p3

    .line 61
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 66
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 68
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sget-object v1, Lcom/foxdebug/system/Ui$Icons;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object p3
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 78
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    .line 79
    invoke-static {p0, p1, p2, p3}, Lcom/foxdebug/system/Ui$Icons;->get(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 87
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 88
    sget v0, Lcom/foxdebug/system/Ui$Icons;->size:I

    invoke-static {p0, p1, v0, p2}, Lcom/foxdebug/system/Ui$Icons;->get(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static setColor(I)V
    .locals 0

    .line 100
    sput p0, Lcom/foxdebug/system/Ui$Icons;->color:I

    return-void
.end method

.method public static setSize(I)V
    .locals 0

    .line 96
    sput p0, Lcom/foxdebug/system/Ui$Icons;->size:I

    return-void
.end method
