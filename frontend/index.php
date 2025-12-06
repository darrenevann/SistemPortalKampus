<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Darren Evan Nathanael</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <!-- Navbar -->
    <?php include 'includes/frontmenu.php'; ?>

    <!-- Carousel Slider-->
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>First slide label</h5>
                    <p>Some representative placeholder content for the first slide.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Second slide label</h5>
                    <p>Some representative placeholder content for the second slide.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Third slide label</h5>
                    <p>Some representative placeholder content for the third slide.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>


    <div class="container">

        <div class="row atas mt-5">
            <!-- Berita -->
            <div class="col-sm-8">
                <div class="d-flex">
                    <div class="flex-shrink-0">
                        <img src="images/tes.jpeg" alt="...">
                    </div>
                    <div class="flex-grow-1 ms-3">
                        Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ipsum nostrum beatae unde ipsa,
                        consequuntur odio exercitationem atque repudiandae tenetur aperiam, nam sequi aliquam quidem id
                        sapiente impedit quis? Cumque, nesciunt!
                    </div>
                </div>

                <div class="d-flex">
                    <div class="flex-shrink-0">
                        <img src="images/tes.jpeg" alt="...">
                    </div>
                    <div class="flex-grow-1 ms-3">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Est repellendus iure rerum aliquam
                        aliquid obcaecati expedita quod fugit, exercitationem illum ipsa nesciunt magni qui animi, eaque
                        doloribus totam placeat nam?
                    </div>
                </div>

            </div>
            <div class="col-sm-4">
                <!-- List Group -->
                <div class="list-group">
                    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-1">List group item heading</h5>
                            <small>3 days ago</small>
                        </div>
                        <p class="mb-1">Some placeholder content in a paragraph.</p>
                        <small>And some small print.</small>
                    </a>
                    <a href="#" class="list-group-item list-group-item-action">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-1">List group item heading</h5>
                            <small class="text-muted">3 days ago</small>
                        </div>
                        <p class="mb-1">Some placeholder content in a paragraph.</p>
                        <small class="text-muted">And some muted small print.</small>
                    </a>
                    <a href="#" class="list-group-item list-group-item-action">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-1">List group item heading</h5>
                            <small class="text-muted">3 days ago</small>
                        </div>
                        <p class="mb-1">Some placeholder content in a paragraph.</p>
                        <small class="text-muted">And some muted small print.</small>
                    </a>
                </div>
            </div>
        </div>

        <!-- Galeri Foto -->
        <h1 class="mt-15, mb-15" style="text-align: center">Galery Photo</h1>
        <div class="galerifoto row g-4">
            <figure class="col-lg-4 col-sm-6 col-xs-12"><img style="width: 100%; height: auto;" src="images/tes.jpeg"
                    class="figure-img img-fluid rounded" alt="...">
                <figcaption class="figure-caption">A caption for the above image.</figcaption>
            </figure>
            <figure class="col-lg-4 col-sm-6 col-xs-12">
                <img style="width: 100%; height: auto;" src="images/tes.jpeg" class="figure-img img-fluid rounded"
                    alt="...">
                <figcaption class="figure-caption">A caption for the above image.</figcaption>
            </figure>
            <figure class="col-lg-4 col-sm-6 col-xs-12">
                <img style="width: 100%; height: auto;" src="images/tes.jpeg" class="figure-img img-fluid rounded"
                    alt="...">
                <figcaption class="figure-caption">A caption for the above image.</figcaption>
            </figure>
            <figure class="col-lg-4 col-sm-6 col-xs-12">
                <img style="width: 100%; height: auto;" src="images/tes.jpeg" class="figure-img img-fluid rounded"
                    alt="...">
                <figcaption class="figure-caption">A caption for the above image.</figcaption>
            </figure>
            <figure class="col-lg-4 col-sm-6 col-xs-12">
                <img style="width: 100%; height: auto;" src="images/tes.jpeg" class="figure-img img-fluid rounded"
                    alt="...">
                <figcaption class="figure-caption">A caption for the above image.</figcaption>
            </figure>
        </div>



        <div class="row tengah mt-5">
            <div class="col-md-4">
                KOTAK TENGAH SEBELAH KIRI
            </div>
            <div class="col-md-4">
                KOTAK TENGAH SEBELAH TENGAH
            </div>
            <div class="col-md-4">
                KOTAK TENGAH SEBELAH KANAN
            </div>
        </div>
        <div class="row atas mt-5">
            <div class="col-sm-4">
                KOTAK BAWAH SEBELAH KIRI
            </div>
            <div class="col-sm-8">
                KOTAK BAWAH SEBELAH KANAN
                <div class="row">
                    <div class="col-sm-8">
                        KOTAK BAWAH 1
                    </div>
                    <div class="col-sm-4">
                        KOTAK BAWAH 2
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

</html>