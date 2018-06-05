 <!-- page Content Start-->
 <div id="content">
    <!--Breadcrumb Start-->
    <div id="content-header">
        <div id="breadcrumb">
            <a href="#" title="" class="tip-bottom" data-original-title="Go to Home">
                <i class="icon-home"></i> Home
            </a>
            <a href="<?php echo base_url('mastercms/karyawan'); ?>">Perusahaan
            </a>
            <a href="#" class="current"></i>Jam Kerja
            </a>
        </div>
    </div>
    <!--Breadcrumb End-->

    <!--Container Fluid start-->
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <!--page header start-->
                    <div class="widget-title" style="margin-bottom: 15px">
                        <span class="icon">
                            <i class="fa fa-plus"></i>
                        </span>
                        <h5>
                            Tambah Hari & Jam Kerja
                        </h5>
                    </div>
                    <!--page header end-->
                    <!--Add content start-->
                    <div class="widget-content nopadding">
                        <form class="form-horizontal " role="form" method="post" enctype="multipart/form-data">
                            <div class="row-fluid">
                                <div class="span12">
                                    <div class="widget-content">
                                            <div class="control-group">
                                                <div class="col-md-6">
                                                    <label class="control-label"><span class="asterik">*</span> Hari Kerja</label>
                                                    <div class="controls">
                                                        <div class="col-md-12" style="margin-left: -15px; margin-bottom: 15px; padding-top: 5px;"><strong>Jam Masuk</strong></div>
                                                        <input class="span3" type="text" name="" disabled="disabled" value="Senin" >
                                                        <input class="span4" type="time" name="hari[senin][masuk]" value="" >
                                                    </div>
                                                    <div class="controls">
                                                        <input class="span3" type="text" name="" disabled="disabled" value="Selasa" >
                                                        <input class="span4" type="time" name="hari[selasa][masuk]" value="masuk" >
                                                    </div>
                                                    <div class="controls">
                                                        <input class="span3" type="text" name="" disabled="disabled" value="Rabu" >
                                                        <input class="span4" type="time" name="hari[rabu][masuk]" value="masuk" >
                                                    </div>
                                                    <div class="controls">
                                                        <input class="span3" type="text" name="" disabled="disabled" value="Kamis" >
                                                        <input class="span4" type="time" name="hari[kamis][masuk]" value="masuk" >
                                                    </div>
                                                    <div class="controls">
                                                        <input class="span3" type="text" name="" disabled="disabled" value="Jum'at" >
                                                        <input class="span4" type="time" name="hari[jumat][masuk]" value="masuk" >
                                                    </div>
                                                    <div class="controls">
                                                        <input class="span3" type="text" name="" disabled="disabled" value="Sabtu" >
                                                        <input class="span4" type="time" name="hari[sabtu][masuk]" value="masuk" >
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="controls">
                                                       <div class="" style="margin-left: -15px; margin-bottom: 15px; padding-top: 5px;"><strong>Jam Keluar</strong></div>
                                                       <input class="span3" type="text" name="" disabled="disabled" value="Senin" >
                                                       <input class="span4" type="time" name="hari[senin][keluar]" value="masuk" >
                                                   </div>
                                                   <div class="controls">
                                                    <input class="span3" type="text" name="" disabled="disabled" value="Selasa" >
                                                    <input class="span4" type="time" name="hari[selasa][keluar]" value="masuk" >
                                                </div>
                                                <div class="controls">
                                                    <input class="span3" type="text" name="" disabled="disabled" value="Rabu" >
                                                    <input class="span4" type="time" name="hari[rabu][keluar]" value="masuk" >
                                                </div>
                                                <div class="controls">
                                                    <input class="span3" type="text" name="" disabled="disabled" value="Kamis" >
                                                    <input class="span4" type="time" name="hari[kamis][keluar]" value="masuk" >
                                                </div>
                                                <div class="controls">
                                                    <input class="span3" type="text" name="" disabled="disabled" value="Jum'at" >
                                                    <input class="span4" type="time" name="hari[jumat][keluar]" value="masuk" >
                                                </div>
                                                <div class="controls">
                                                    <input class="span3" type="text" name="" disabled="disabled" value="Sabtu" >
                                                    <input class="span4" type="time" name="hari[sabtu][keluar]" value="masuk" >
                                                </div>

                                            </div>
                                            <div class="control-group form-action">

                                                <div class="col-md-12" style="margin-top:30px;" >
                                                    <center>
                                                        <button type="submit" class="btn btn-success"><i class="fa fa-check"></i> Simpan</button> &nbsp;
                                                        <a href="" class="btn btn-danger"><i class="fa fa-undo"></i> Batal</a>
                                                    </center>
                                                </div>
                                            </div>
                                        </div>

                                </div>
                            </div>
                        </div>
                        <!-- page end-->
                    </form>
                </div>
                <!--Add contetn End-->
            </div>
        </div>
    </div>
    <!--Span12 End-->
</div>
<!-- Container fluid END-->

</div>

<!-- page Content End