contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    revert
}

function sub_87a09f29(?) {
    if block.timestamp > -601:
        revert with 'NH{q', 17
    stor2 = block.timestamp + 600
}

function deposit() payable {
    require msg.value >= stor3
    if stor1 > -msg.value - 1:
        revert with 'NH{q', 17
    stor1 += msg.value
}

function withdraw() {
    require block.timestamp >= stor2
    call stor0 with:
       value stor1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
