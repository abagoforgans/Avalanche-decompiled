contract main {




// =====================  Runtime code  =====================


address stor3608;
uint256 stor3608;
uint256 stor4CD9;
address stor7A45;
uint256 stor7A45;
address __admin__Address;
uint256 storB531;

function __admin__() {
    return address(__admin__Address)
}

function __changeAdmin__(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(__admin__Address) != msg.sender:
        revert with 0, 'only admin'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot change the admin of a proxy to the zero address'
    emit AdminChanged(address(__admin__Address), arg1);
    uint256(storB531) = arg1
}

function __upgradeTo__(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(__admin__Address) != msg.sender:
        revert with 0, 'only admin'
    if arg1:
        if not ext_code.size(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Cannot set a proxy implementation to a non-contract address'
    uint256(stor3608) = arg1
    emit Upgraded(arg1);
}

function __implementation__() {
    if ext_code.size(uint256(stor7A45)):
        require ext_code.size(address(stor7A45))
        if not stor4CD9:
            staticcall address(stor7A45).productImplementation() with:
                    gas gas_remaining wei
        else:
            staticcall address(stor7A45).productImplementations(bytes32 rg1) with:
                    gas gas_remaining wei
                   args stor4CD9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20]:
            return ext_call.return_data[12 len 20]
    return address(stor3608)
}

function __upgradeToAndCall__(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if address(__admin__Address) != msg.sender:
        revert with 0, 'only admin'
    if arg1:
        if not ext_code.size(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Cannot set a proxy implementation to a non-contract address'
    uint256(stor3608) = arg1
    emit Upgraded(arg1);
    delegate arg1 with:
         gas gas_remaining wei
        args arg2[all]
    require delegate.return_code
}

function _fallback() payable {
    if ext_code.size(msg.sender):
        if not calldata.size:
            if gas_remaining <= 2300:
    if not ext_code.size(uint256(stor7A45)):
        delegate uint256(stor3608) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
    else:
        require ext_code.size(address(stor7A45))
        if not stor4CD9:
            staticcall address(stor7A45).productImplementation() with:
                    gas gas_remaining wei
        else:
            staticcall address(stor7A45).productImplementations(bytes32 rg1) with:
                    gas gas_remaining wei
                   args stor4CD9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20]:
            delegate ext_call.return_data[0] with:
               funct call.data[0 len 4]
                 gas gas_remaining wei
                args call.data[4 len calldata.size - 4]
        else:
            delegate uint256(stor3608) with:
               funct call.data[0 len 4]
                 gas gas_remaining wei
                args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function __InitializableAdminUpgradeabilityProductProxy_init__(address arg1, address arg2, address arg3, bytes32 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 128 >= 96 and ceil32(arg5.length) + 128 <= test266151307()
    require calldata.size >= arg5.length + arg5 + 36
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if not arg1:
        uint256(stor3608) = arg1
        if not address(__admin__Address):
            uint256(storB531) = arg2
            if not arg3:
                uint256(stor7A45) = arg3
                stor4CD9 = arg4
                if arg5.length:
                    if not ext_code.size(uint256(stor7A45)):
                        mem[ceil32(arg5.length) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                        if ceil32(arg5.length) > arg5.length:
                            mem[ceil32(arg5.length) + arg5.length + 128] = 0
                        delegate address(stor3608) with:
                           funct (Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256)
                             gas gas_remaining wei
                            args mem[ceil32(arg5.length) + 132 len arg5.length - 4]
                    else:
                        if not stor4CD9:
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementation() with:
                                    gas gas_remaining wei
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _42 = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            require Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] == Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
                                delegate address(_42).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                        else:
                            mem[ceil32(arg5.length) + 132] = stor4CD9
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementations(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args stor4CD9
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if ext_call.return_data[12 len 20]:
                                delegate address(ext_call.return_data[4 len 28]).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                    require delegate.return_code
            else:
                if not ext_code.size(arg3):
                    revert with 0, 'Cannot set a factory to a non-contract address'
                uint256(stor7A45) = arg3
                stor4CD9 = arg4
                if arg5.length:
                    if not ext_code.size(uint256(stor7A45)):
                        mem[ceil32(arg5.length) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                        if ceil32(arg5.length) > arg5.length:
                            mem[ceil32(arg5.length) + arg5.length + 128] = 0
                        delegate address(stor3608) with:
                           funct (Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256)
                             gas gas_remaining wei
                            args mem[ceil32(arg5.length) + 132 len arg5.length - 4]
                    else:
                        if not stor4CD9:
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementation() with:
                                    gas gas_remaining wei
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _62 = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            require Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] == Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
                                delegate address(_62).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                        else:
                            mem[ceil32(arg5.length) + 132] = stor4CD9
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementations(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args stor4CD9
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if ext_call.return_data[12 len 20]:
                                delegate address(ext_call.return_data[4 len 28]).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                    require delegate.return_code
        else:
            require address(__admin__Address) == msg.sender
            uint256(storB531) = arg2
            if not arg3:
                uint256(stor7A45) = arg3
                stor4CD9 = arg4
                if arg5.length:
                    if not ext_code.size(uint256(stor7A45)):
                        mem[ceil32(arg5.length) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                        if ceil32(arg5.length) > arg5.length:
                            mem[ceil32(arg5.length) + arg5.length + 128] = 0
                        delegate address(stor3608) with:
                           funct (Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256)
                             gas gas_remaining wei
                            args mem[ceil32(arg5.length) + 132 len arg5.length - 4]
                    else:
                        if not stor4CD9:
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementation() with:
                                    gas gas_remaining wei
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _51 = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            require Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] == Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
                                delegate address(_51).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                        else:
                            mem[ceil32(arg5.length) + 132] = stor4CD9
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementations(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args stor4CD9
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if ext_call.return_data[12 len 20]:
                                delegate address(ext_call.return_data[4 len 28]).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                    require delegate.return_code
            else:
                if not ext_code.size(arg3):
                    revert with 0, 'Cannot set a factory to a non-contract address'
                uint256(stor7A45) = arg3
                stor4CD9 = arg4
                if arg5.length:
                    if not ext_code.size(uint256(stor7A45)):
                        mem[ceil32(arg5.length) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                        if ceil32(arg5.length) > arg5.length:
                            mem[ceil32(arg5.length) + arg5.length + 128] = 0
                        delegate address(stor3608) with:
                           funct (Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256)
                             gas gas_remaining wei
                            args mem[ceil32(arg5.length) + 132 len arg5.length - 4]
                    else:
                        if not stor4CD9:
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementation() with:
                                    gas gas_remaining wei
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _71 = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            require Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] == Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
                                delegate address(_71).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                        else:
                            mem[ceil32(arg5.length) + 132] = stor4CD9
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementations(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args stor4CD9
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if ext_call.return_data[12 len 20]:
                                delegate address(ext_call.return_data[4 len 28]).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                    require delegate.return_code
    else:
        if not ext_code.size(arg1):
            revert with 0, 'Cannot set a proxy implementation to a non-contract address'
        uint256(stor3608) = arg1
        if not address(__admin__Address):
            uint256(storB531) = arg2
            if not arg3:
                uint256(stor7A45) = arg3
                stor4CD9 = arg4
                if arg5.length:
                    if not ext_code.size(uint256(stor7A45)):
                        mem[ceil32(arg5.length) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                        if ceil32(arg5.length) > arg5.length:
                            mem[ceil32(arg5.length) + arg5.length + 128] = 0
                        delegate address(stor3608) with:
                           funct (Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256)
                             gas gas_remaining wei
                            args mem[ceil32(arg5.length) + 132 len arg5.length - 4]
                    else:
                        if not stor4CD9:
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementation() with:
                                    gas gas_remaining wei
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _64 = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            require Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] == Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
                                delegate address(_64).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                        else:
                            mem[ceil32(arg5.length) + 132] = stor4CD9
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementations(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args stor4CD9
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if ext_call.return_data[12 len 20]:
                                delegate address(ext_call.return_data[4 len 28]).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                    require delegate.return_code
            else:
                if not ext_code.size(arg3):
                    revert with 0, 'Cannot set a factory to a non-contract address'
                uint256(stor7A45) = arg3
                stor4CD9 = arg4
                if arg5.length:
                    if not ext_code.size(uint256(stor7A45)):
                        mem[ceil32(arg5.length) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                        if ceil32(arg5.length) > arg5.length:
                            mem[ceil32(arg5.length) + arg5.length + 128] = 0
                        delegate address(stor3608) with:
                           funct (Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256)
                             gas gas_remaining wei
                            args mem[ceil32(arg5.length) + 132 len arg5.length - 4]
                    else:
                        if not stor4CD9:
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementation() with:
                                    gas gas_remaining wei
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _82 = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            require Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] == Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
                                delegate address(_82).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                        else:
                            mem[ceil32(arg5.length) + 132] = stor4CD9
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementations(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args stor4CD9
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if ext_call.return_data[12 len 20]:
                                delegate address(ext_call.return_data[4 len 28]).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                    require delegate.return_code
        else:
            require address(__admin__Address) == msg.sender
            uint256(storB531) = arg2
            if not arg3:
                uint256(stor7A45) = arg3
                stor4CD9 = arg4
                if arg5.length:
                    if not ext_code.size(uint256(stor7A45)):
                        mem[ceil32(arg5.length) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                        if ceil32(arg5.length) > arg5.length:
                            mem[ceil32(arg5.length) + arg5.length + 128] = 0
                        delegate address(stor3608) with:
                           funct (Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256)
                             gas gas_remaining wei
                            args mem[ceil32(arg5.length) + 132 len arg5.length - 4]
                    else:
                        if not stor4CD9:
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementation() with:
                                    gas gas_remaining wei
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _73 = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            require Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] == Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
                                delegate address(_73).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                        else:
                            mem[ceil32(arg5.length) + 132] = stor4CD9
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementations(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args stor4CD9
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if ext_call.return_data[12 len 20]:
                                delegate address(ext_call.return_data[4 len 28]).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                    require delegate.return_code
            else:
                if not ext_code.size(arg3):
                    revert with 0, 'Cannot set a factory to a non-contract address'
                uint256(stor7A45) = arg3
                stor4CD9 = arg4
                if arg5.length:
                    if not ext_code.size(uint256(stor7A45)):
                        mem[ceil32(arg5.length) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                        if ceil32(arg5.length) > arg5.length:
                            mem[ceil32(arg5.length) + arg5.length + 128] = 0
                        delegate address(stor3608) with:
                           funct (Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256)
                             gas gas_remaining wei
                            args mem[ceil32(arg5.length) + 132 len arg5.length - 4]
                    else:
                        if not stor4CD9:
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementation() with:
                                    gas gas_remaining wei
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _91 = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            require Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] == Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if Mask(8 * -ceil32(arg5.length) + arg5.length + 20, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]:
                                delegate address(_91).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                        else:
                            mem[ceil32(arg5.length) + 132] = stor4CD9
                            require ext_code.size(address(stor7A45))
                            staticcall address(stor7A45).productImplementations(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args stor4CD9
                            mem[ceil32(arg5.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                            if ceil32(arg5.length) > arg5.length:
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + arg5.length + 128] = 0
                            if ext_call.return_data[12 len 20]:
                                delegate address(ext_call.return_data[4 len 28]).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                            else:
                                delegate address(stor3608).mem[ceil32(arg5.length) + ceil32(return_data.size) + 128 len 4] with:
                                     gas gas_remaining wei
                                    args mem[ceil32(arg5.length) + ceil32(return_data.size) + 132 len arg5.length - 4]
                    require delegate.return_code
}



}
