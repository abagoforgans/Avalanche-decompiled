contract main {




// =====================  Runtime code  =====================


address owner;
address sub_ab703d2bAddress;
uint256 sub_ed4460ef;
uint256 stor3;
uint256 stor4;
address stor5;

function owner() {
    return owner
}

function sub_ab703d2b(?) {
    return sub_ab703d2bAddress
}

function sub_ed4460ef(?) {
    return sub_ed4460ef
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_eef27957(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 <= 0:
        revert with 0, 'bad input'
    sub_ab703d2bAddress = address(arg1)
    sub_ed4460ef = arg2
    stor4 = arg3
    stor5 = address(arg4)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recoverERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if arg3:
            if arg3 <= eth.balance(this.address):
                call arg2 with:
                   value arg3 wei
                     gas 2300 * is_zero(value) wei
            else:
                call arg2 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if arg3 <= ext_call.return_data[0]:
            call arg1.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), arg3
        else:
            call arg1.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '_safeTokenTransfer: transfer failed'
}

function roll(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor5
    if block.number < 99:
        revert with 0, 17
    stor3 = sha3(address(arg1), block.timestamp, gas_remaining, stor3, block.hash(block.number - 99))
    if not stor4:
        revert with 0, 18
    if not sha3(address(arg1), block.timestamp, gas_remaining, stor3, block.hash(block.number - 99)) % stor4:
        if sub_ab703d2bAddress == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            if sub_ed4460ef:
                if sub_ed4460ef <= eth.balance(this.address):
                    call arg1 with:
                       value sub_ed4460ef wei
                         gas 2300 * is_zero(value) wei
                else:
                    call arg1 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(sub_ab703d2bAddress)
            staticcall sub_ab703d2bAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_ab703d2bAddress)
            if sub_ed4460ef <= ext_call.return_data[0]:
                call sub_ab703d2bAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), sub_ed4460ef
            else:
                call sub_ab703d2bAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, '_safeTokenTransfer: transfer failed'
        emit Winner(block.timestamp, arg1);
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xab703d2b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xab703d2b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_ab703d2bAddress
            if unknown_0xed4460ef(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_ed4460ef
            if uint32(call.func_hash) >> 224 != unknown_0xeef27957(?????):
                require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(arg1):
                    revert with 0, 'Ownable: new owner is the zero address'
                emit OwnershipTransferred(owner, address(arg1));
                owner = address(arg1)
            else:
                require not msg.value
                require calldata.size - 4 >= 128
                require arg1 == address(arg1)
                require arg4 == address(arg4)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg3 <= 0:
                    revert with 0, 'bad input'
                sub_ab703d2bAddress = address(arg1)
                sub_ed4460ef = arg2
                stor4 = arg3
                stor5 = address(arg4)
        else:
            if unknown_0x1171bda9(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if address(arg1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    if arg3:
                        if arg3 <= eth.balance(this.address):
                            call address(arg2) with:
                               value arg3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            call address(arg2) with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(arg1))
                    if arg3 <= ext_call.return_data[0]:
                        call address(arg1).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                    else:
                        call address(arg1).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, '_safeTokenTransfer: transfer failed'
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x14198ab4(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                        require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return owner
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require msg.sender == stor5
                    if block.number < 99:
                        revert with 0, 17
                    stor3 = sha3(address(arg1), block.timestamp, gas_remaining, stor3, block.hash(block.number - 99))
                    if not stor4:
                        revert with 0, 18
                    if not sha3(address(arg1), block.timestamp, gas_remaining, stor3, block.hash(block.number - 99)) % stor4:
                        if sub_ab703d2bAddress == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                            if sub_ed4460ef:
                                if sub_ed4460ef <= eth.balance(this.address):
                                    call address(arg1) with:
                                       value sub_ed4460ef wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    call address(arg1) with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(sub_ab703d2bAddress)
                            staticcall sub_ab703d2bAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_ab703d2bAddress)
                            if sub_ed4460ef <= ext_call.return_data[0]:
                                call sub_ab703d2bAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), sub_ed4460ef
                            else:
                                call sub_ab703d2bAddress.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, '_safeTokenTransfer: transfer failed'
                        emit Winner(block.timestamp, address(arg1));
}



}
