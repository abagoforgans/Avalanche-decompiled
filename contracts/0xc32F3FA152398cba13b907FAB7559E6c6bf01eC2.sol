contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
address stor0;
address sub_1c51e3e8Address; offset 16
uint256 stor0; offset 8
address stor1;
address stor2;
address stor3;
address _managerAddress;
mapping of uint256 sub_5fc9ae6f;
mapping of uint8 stor6;

function sub_1c51e3e8(?) payable {
    return sub_1c51e3e8Address
}

function sub_5fc9ae6f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5fc9ae6f[arg1]
}

function sub_7991a044(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function sub_cab38ba8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[address(arg1)])
}

function _manager() payable {
    return _managerAddress
}

function _fallback() payable {
    revert
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _managerAddress != msg.sender:
        revert with 0, 'Caller is not the Manager'
    stor3 = arg1
}

function initialize(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        sub_1c51e3e8Address = arg1
        stor1 = arg2
        stor2 = arg3
        _managerAddress = arg4
    else:
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        sub_1c51e3e8Address = arg1
        stor1 = arg2
        stor2 = arg3
        _managerAddress = arg4
        Mask(248, 0, stor0.field_8) = 0
}

function sub_e203a045(?) payable {
    if _managerAddress != msg.sender:
        revert with 0, 'Caller is not the Manager'
    require ext_code.size(sub_1c51e3e8Address)
    call sub_1c51e3e8Address.0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor3.0x5fdeab18 with:
         gas gas_remaining wei
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if _managerAddress != msg.sender:
        revert with 0, 'Caller is not the Manager'
    call sub_1c51e3e8Address.0x8eaf1ff2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_5fc9ae6f[address(stor0.field_0)] = ext_call.return_data[0]
    call stor1.0x8eaf1ff2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_5fc9ae6f[stor1] = ext_call.return_data[0]
    call stor2.0x8eaf1ff2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    sub_5fc9ae6f[stor2] = ext_call.return_data[0]
    if sub_5fc9ae6f[address(stor0.field_0)] != sub_5fc9ae6f[stor1]:
        if sub_5fc9ae6f[address(stor0.field_0)] > sub_5fc9ae6f[stor1]:
            if sub_5fc9ae6f[address(stor0.field_0)] > sub_5fc9ae6f[stor2]:
                stor6[address(stor0.field_0)] = 1
            else:
                if sub_5fc9ae6f[address(stor0.field_0)] == sub_5fc9ae6f[stor2]:
                    stor6[address(stor0.field_0)] = 1
                stor6[stor2] = 1
        else:
            if sub_5fc9ae6f[address(stor0.field_0)] != sub_5fc9ae6f[stor1]:
                if sub_5fc9ae6f[stor1] > sub_5fc9ae6f[stor2]:
                    stor6[stor1] = 1
                else:
                    if sub_5fc9ae6f[stor1] == sub_5fc9ae6f[stor2]:
                        stor6[stor1] = 1
                    stor6[stor2] = 1
            else:
                if sub_5fc9ae6f[address(stor0.field_0)] > sub_5fc9ae6f[stor2]:
                    stor6[address(stor0.field_0)] = 1
                    stor6[stor1] = 1
                else:
                    if sub_5fc9ae6f[stor1] > sub_5fc9ae6f[stor2]:
                        stor6[stor1] = 1
                    else:
                        if sub_5fc9ae6f[stor1] == sub_5fc9ae6f[stor2]:
                            stor6[stor1] = 1
                        stor6[stor2] = 1
    else:
        if sub_5fc9ae6f[stor1] == sub_5fc9ae6f[stor2]:
            stor6[address(stor0.field_0)] = 1
            stor6[stor1] = 1
            stor6[stor2] = 1
        else:
            if sub_5fc9ae6f[address(stor0.field_0)] > sub_5fc9ae6f[stor1]:
                if sub_5fc9ae6f[address(stor0.field_0)] > sub_5fc9ae6f[stor2]:
                    stor6[address(stor0.field_0)] = 1
                else:
                    if sub_5fc9ae6f[address(stor0.field_0)] == sub_5fc9ae6f[stor2]:
                        stor6[address(stor0.field_0)] = 1
                    stor6[stor2] = 1
            else:
                if sub_5fc9ae6f[address(stor0.field_0)] != sub_5fc9ae6f[stor1]:
                    if sub_5fc9ae6f[stor1] > sub_5fc9ae6f[stor2]:
                        stor6[stor1] = 1
                    else:
                        if sub_5fc9ae6f[stor1] == sub_5fc9ae6f[stor2]:
                            stor6[stor1] = 1
                        stor6[stor2] = 1
                else:
                    if sub_5fc9ae6f[address(stor0.field_0)] > sub_5fc9ae6f[stor2]:
                        stor6[address(stor0.field_0)] = 1
                        stor6[stor1] = 1
                    else:
                        if sub_5fc9ae6f[stor1] > sub_5fc9ae6f[stor2]:
                            stor6[stor1] = 1
                        else:
                            if sub_5fc9ae6f[stor1] == sub_5fc9ae6f[stor2]:
                                stor6[stor1] = 1
                            stor6[stor2] = 1
    emit 0x5188b8ce 
}



}
