<div class="container-fluid">
    <div class="row">
        <div class="col-md-12 mt-3">
            <h2 class="text-center">History</h2>
            <div class="row mt-3">
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="">Start Time</label>
                        <div class="input-group">
                            <input type="text" class="form-control datepicker" name="start_time" id="start_time" autocomplete="off" required>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="">End Time</label>
                        <div class="input-group">
                            <input type="text" class="form-control datepicker mr-1" name="end_time" id="end_time" autocomplete="off" required>
                            <button type="button" class="btn btn-danger" id="btn_search"><i class="fa fa-search" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card mt-3">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card-body">
                            <table class="table table-bordered" style="width: 100%;" id="tabel_history">
                                <thead class="text-center">
                                    <tr class="text-center">
                                        <th scope="col">No</th>
                                        <th scope="col">Material Name</th>
                                        <th scope="col">User</th>
                                        <th scope="col">Action</th>
                                        <th scope="col">Before Qty</th>
                                        <th scope="col">After Qty</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Remark</th>
                                        <th scope="col">Date</th>
                                    </tr>
                                </thead>
                                <tbody>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Table -->
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        var userDataTable = $('#tabel_history').DataTable({
            'processing': true,
            'serverSide': true,
            'serverMethod': 'post',
            'ajax': {
                'url': '<?= base_url('index.php/History/listHistory') ?>',
                'data': function(data) {
                    // Read Value
                    data.searchStart = $('#start_time').val();
                    data.searchEnd = $('#end_time').val();
                }
            },
            'columns': [{
                    data: 'nomor'
                },
                {
                    data: 'material_number'
                },
                {
                    data: 'username'
                },
                {
                    data: 'action'
                },
                {
                    data: 'before_qty'
                },
                {
                    data: 'after_qty'
                },
                {
                    data: 'status'
                },
                {
                    data: 'remark'
                },
                {
                    data: 'datetime'
                },
            ]
        });
        $('#btn_search').click(function() {
            userDataTable.draw();
        });
    });

    // -------------------------------------------------------
    // -------------------------------------------------------
    // -------------------------------------------------------
</script>