contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint256 stor1;
uint8 stor2; offset 160
address stor2;

function sub_99a2a6a3(?) {
    require calldata.size - 4 >= 32
    if address(stor0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function sub_d7403b94(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if uint8(stor2.field_160):
        revert with 0, 'Already initilized.'
    address(stor2.field_0) = address(arg1)
    uint8(stor2.field_160) = 1
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    if address(stor0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg2
}

function sub_6d7a8dd1(?) {
    if address(stor0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sha3(msg.sender, 305419896) != stor1:
        revert with 0, 'Ownable: caller is not the owne'
    call address(stor0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cad4a462(?) {
    require calldata.size - 4 >= 32
    if address(stor0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sha3(msg.sender, 305419896) != stor1:
        revert with 0, 'Ownable: caller is not the owne'
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).withdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if 0 < arg1:
        revert with 0, 'r3'
}

function sub_77769ac6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    if address(stor0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sha3(msg.sender, 305419896) != stor1:
        revert with 0, 'Ownable: caller is not the owne'
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).invest(address arg1, uint8 arg2) with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg1), uint8(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f91452ec(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sha3(msg.sender, 305419896) != stor1:
        revert with 0, 'Ownable: caller is not the owne'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(stor0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_93d64749(?) {
    require calldata.size - 4 >= 32
    if address(stor0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sha3(msg.sender, 305419896) != stor1:
        revert with 0, 'Ownable: caller is not the owne'
    if address(stor0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sha3(msg.sender, 305419896) != stor1:
        revert with 0, 'Ownable: caller is not the owne'
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).withdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if 0 < arg1:
        revert with 0, 'r3'
    if address(stor0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sha3(msg.sender, 305419896) != stor1:
        revert with 0, 'Ownable: caller is not the owne'
    call address(stor0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x99a2a6a3(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x99a2a6a3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if address(stor0) != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor1 = arg1
            else:
                if unknown_0xcad4a462(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if address(stor0) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if sha3(msg.sender, 305419896) != stor1:
                        revert with 0, 'Ownable: caller is not the owne'
                    require ext_code.size(address(stor2.field_0))
                    call address(stor2.field_0).withdraw() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if 0 < arg1:
                        revert with 0, 'r3'
                else:
                    if unknown_0xd7403b94(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if uint8(stor2.field_160):
                            revert with 0, 'Already initilized.'
                        address(stor2.field_0) = address(arg1)
                        uint8(stor2.field_160) = 1
                        uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                        if address(stor0) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor1 = arg2
                    else:
                        require unknown_0xf91452ec(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if address(stor0) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if sha3(msg.sender, 305419896) != stor1:
                            revert with 0, 'Ownable: caller is not the owne'
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call address(arg1).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(stor0), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x6d7a8dd1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if address(stor0) != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if sha3(msg.sender, 305419896) != stor1:
                    revert with 0, 'Ownable: caller is not the owne'
                call address(stor0) with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            else:
                if unknown_0x77769ac6(?????) == uint32(call.func_hash) >> 224:
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == uint8(arg2)
                    if address(stor0) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if sha3(msg.sender, 305419896) != stor1:
                        revert with 0, 'Ownable: caller is not the owne'
                    require ext_code.size(address(stor2.field_0))
                    call address(stor2.field_0).invest(address arg1, uint8 arg2) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args address(arg1), uint8(arg2)
                else:
                    require unknown_0x93d64749(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if address(stor0) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if sha3(msg.sender, 305419896) != stor1:
                        revert with 0, 'Ownable: caller is not the owne'
                    if address(stor0) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if sha3(msg.sender, 305419896) != stor1:
                        revert with 0, 'Ownable: caller is not the owne'
                    require ext_code.size(address(stor2.field_0))
                    call address(stor2.field_0).withdraw() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if 0 < arg1:
                        revert with 0, 'r3'
                    if address(stor0) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if sha3(msg.sender, 305419896) != stor1:
                        revert with 0, 'Ownable: caller is not the owne'
                    call address(stor0) with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
