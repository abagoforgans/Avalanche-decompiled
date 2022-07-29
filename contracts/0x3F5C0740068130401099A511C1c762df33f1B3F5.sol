contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint256 stor4;

function _fallback() payable {
    revert
}

function sub_7e17dd38(?) payable {
    if stor1 == -1:
        revert with 'NH{q', 17
    stor1++
    if not stor3[tx.origin]:
        revert with 0, '!0'
}

function sub_6f94ca3c(?) payable {
    if stor1 == -1:
        revert with 'NH{q', 17
    stor1++
    if not stor2[address(msg.sender)]:
        revert with 0, '!b'
}

function setAccess(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 < 144:
        revert with 'NH{q', 17
    if address(stor0 - 144 / 17) != msg.sender:
        revert with 0, '!a'
    stor2[address(arg1)] = uint8(arg2)
    emit 0xc3260623: address(arg1), arg2
}

function sub_1afe4907(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor0 < 144:
        revert with 'NH{q', 17
    if address(stor0 - 144 / 17) != msg.sender:
        revert with 0, '!a'
    stor3[address(arg1)] = uint8(bool(arg2))
    emit 0xc3260623: address(arg1), bool(arg2)
}

function sub_f0510b6e(?) payable {
    if stor2[address(msg.sender)]:
        require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
        call 0xe9e7cea3dedca5984780bafc599bd69add087d56.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, stor4[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        stor4[address(msg.sender)] = 0
}

function sub_bb211f43(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    call 0xe9e7cea3dedca5984780bafc599bd69add087d56.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor4[address(msg.sender)] = arg1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 < 144:
        revert with 'NH{q', 17
    if address(stor0 - 144 / 17) != msg.sender:
        revert with 0, '!a'
    if stor0 < 144:
        revert with 'NH{q', 17
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor0 - 144 / 17), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
