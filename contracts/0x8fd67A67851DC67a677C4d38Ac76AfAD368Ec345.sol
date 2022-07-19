contract main {




// =====================  Runtime code  =====================


address tokenAddress;
uint256 stor1;
uint256 stor2;
uint64 stor3;
address destinationAddress;
mapping of uint8 stor4;
uint8 stor5;
uint256 stor6;
uint256 stor7;

function destination() {
    return address(destinationAddress)
}

function token() {
    return tokenAddress
}

function sub_2b869602(?) {
    require calldata.size - 4 >= 32
    stor4[msg.sender] = 1
    stor2 = arg1
}

function sub_67895c3f(?) {
    require calldata.size - 4 >= 32
    stor4[msg.sender] = 1
    stor1 = arg1
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor4[msg.sender] = 1
    stor4[address(arg1)] = 1
}

function sub_4120ac44(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    stor4[msg.sender] = 1
    stor6 = arg1
    stor5 = uint8(bool(arg2))
}

function sub_db618828(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor4[msg.sender] = 1
    address(destinationAddress) = address(arg1)
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor4[msg.sender] = 1
    if arg1 != msg.sender:
        revert with 0, 'can only remove self'
    stor4[address(arg1)] = 0
}

function send() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'balance to low to send'
    if not stor5:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x2e15238c with:
           value msg.value wei
             gas gas_remaining wei
            args 10, 160, ext_call.return_data[0], 0, 224, 20, Mask(160, 96, uint64(stor3), 0, 0) >> 96, 0, 86, 0, stor1, stor2, msg.sender, 0 >> 432, 0
    else:
        if ext_call.return_data[0] and stor6 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not stor7:
            revert with 0, 18
        mem[ceil32(return_data.size) + 250] = ext_call.return_data[0] * stor6 / stor7
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] * stor6 / stor7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] < ext_call.return_data[0] * stor6 / stor7:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 270] = 10
        mem[(2 * ceil32(return_data.size)) + 302] = 160
        mem[(2 * ceil32(return_data.size)) + 430] = ceil32(return_data.size) + 20
        mem[(2 * ceil32(return_data.size)) + 462 len floor32(ceil32(return_data.size) + 51)] = uint64(stor3), 0, mem[(2 * ceil32(return_data.size)) + 270 len floor32(ceil32(return_data.size) + 51) - 24]
        if floor32(ceil32(return_data.size) + 51) <= ceil32(return_data.size) + 20:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x2e15238c with:
               value msg.value wei
                 gas gas_remaining wei
                args 10, 160, ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / stor7), 0, floor32(ceil32(return_data.size) + 51) + 192, ceil32(return_data.size) + 20, mem[(2 * ceil32(return_data.size)) + 462 len floor32(ceil32(return_data.size) + 51)], 86, stor2, msg.sender, ext_call.return_data[0 len 10] >> 432, 0
        else:
            mem[(4 * ceil32(return_data.size)) + 482] = 0
            mem[floor32(ceil32(return_data.size) + 51) + (2 * ceil32(return_data.size)) + 462] = 86
            mem[floor32(ceil32(return_data.size) + 51) + (2 * ceil32(return_data.size)) + 494 len 96] = 0, stor1, stor2, msg.sender, ext_call.return_data[0 len 10]
            mem[floor32(ceil32(return_data.size) + 51) + (2 * ceil32(return_data.size)) + 580] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x2e15238c with:
               value msg.value wei
                 gas gas_remaining wei
                args 10, 160, ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / stor7), 0, floor32(ceil32(return_data.size) + 51) + 192, mem[(2 * ceil32(return_data.size)) + 430 len ceil32(return_data.size) + 52], 0, mem[(4 * ceil32(return_data.size)) + 514 len floor32(ceil32(return_data.size) + 51) + -ceil32(return_data.size) + 76]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x70480275(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x1785f53c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                stor4[msg.sender] = 1
                if address(arg1) != msg.sender:
                    revert with 0, 'can only remove self'
                stor4[address(arg1)] = 0
            else:
                if unknown_0x2b869602(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    stor4[msg.sender] = 1
                    stor2 = arg1
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x4120ac44(?????):
                        require unknown_0x67895c3f(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        stor4[msg.sender] = 1
                        stor1 = arg1
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg2 == bool(arg2)
                        stor4[msg.sender] = 1
                        stor6 = arg1
                        stor5 = uint8(bool(arg2))
        else:
            if unknown_0x70480275(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                stor4[msg.sender] = 1
                stor4[address(arg1)] = 1
            else:
                if unknown_0xb269681d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return address(destinationAddress)
                if uint32(call.func_hash) >> 224 != unknown_0xb46300ec(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xdb618828(?????):
                        require unknown_0xfc0c546a(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return tokenAddress
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    stor4[msg.sender] = 1
                    address(destinationAddress) = address(arg1)
                else:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'balance to low to send'
                    if not stor5:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x2e15238c with:
                           value msg.value wei
                             gas gas_remaining wei
                            args 10, 160, ext_call.return_data[0], 0, 224, 20, Mask(160, 96, uint64(stor3), 0, 0) >> 96, 0, 86, 0, stor1, stor2, msg.sender, 0 >> 432, 0
                    else:
                        if ext_call.return_data[0] and stor6 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not stor7:
                            revert with 0, 18
                        mem[ceil32(return_data.size) + 282] = ext_call.return_data[0] * stor6 / stor7
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0] * stor6 / stor7
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0] < ext_call.return_data[0] * stor6 / stor7:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 302] = 10
                        mem[(2 * ceil32(return_data.size)) + 334] = 160
                        mem[(2 * ceil32(return_data.size)) + 462] = ceil32(return_data.size) + 20
                        mem[(2 * ceil32(return_data.size)) + 494 len floor32(ceil32(return_data.size) + 51)] = uint64(stor3), 0, mem[(2 * ceil32(return_data.size)) + 302 len floor32(ceil32(return_data.size) + 51) - 24]
                        if floor32(ceil32(return_data.size) + 51) <= ceil32(return_data.size) + 20:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x2e15238c with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args 10, 160, ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / stor7), 0, floor32(ceil32(return_data.size) + 51) + 192, ceil32(return_data.size) + 20, mem[(2 * ceil32(return_data.size)) + 494 len floor32(ceil32(return_data.size) + 51)], 86, stor2, msg.sender, ext_call.return_data[0 len 10] >> 432, 0
                        else:
                            mem[(4 * ceil32(return_data.size)) + 514] = 0
                            mem[floor32(ceil32(return_data.size) + 51) + (2 * ceil32(return_data.size)) + 494] = 86
                            mem[floor32(ceil32(return_data.size) + 51) + (2 * ceil32(return_data.size)) + 526 len 96] = 0, stor1, stor2, msg.sender, ext_call.return_data[0 len 10]
                            mem[floor32(ceil32(return_data.size) + 51) + (2 * ceil32(return_data.size)) + 612] = 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x2e15238c with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args 10, 160, ext_call.return_data[0] - (ext_call.return_data[0] * stor6 / stor7), 0, floor32(ceil32(return_data.size) + 51) + 192, mem[(2 * ceil32(return_data.size)) + 462 len ceil32(return_data.size) + 52], 0, mem[(4 * ceil32(return_data.size)) + 546 len floor32(ceil32(return_data.size) + 51) + -ceil32(return_data.size) + 76]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > 0:
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
}



}
