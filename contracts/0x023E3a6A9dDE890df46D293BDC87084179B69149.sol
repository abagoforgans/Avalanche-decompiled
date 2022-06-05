contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor55562301234404549064732657743177008509969755924332665131323499316121459163046;

function _fallback() payable {
    revert
}

function exec(address arg1, bytes arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if not stor7AD7[address(msg.sender)]:
        revert with 0, 'ExecFacet.exec: onlyExecutors'
    if not arg3:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        call arg1 with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 47, 'ExecFacet._execServiceCall:', 'UnexpectedReturndata', 0, 0 >> 120, 0
            if not arg3:
                emit 0x66c4011e: 0, msg.sender, arg1, arg3
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                else:
                    return 0
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                if eth.balance(this.address) < 0:
                    revert with 0, 17
                emit 0x66c4011e: eth.balance(this.address), 0, 0, msg.sender, arg1, arg3
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                return eth.balance(this.address), 0, 0, 0
            staticcall arg3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            emit 0x66c4011e: ext_call.return_data[0], 0, 0, msg.sender, arg1, arg3
            if gas_remaining < gas_remaining:
                revert with 0, 17
            return ext_call.return_data[0], 0, 0, 0
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if not arg3:
                emit 0x66c4011e: 0, msg.sender, arg1, arg3
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                else:
                    return 0
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                if eth.balance(this.address) < 0:
                    revert with 0, 17
                emit 0x66c4011e: eth.balance(this.address), 0, 0, msg.sender, arg1, arg3
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                return eth.balance(this.address), 0, 0, 0
            staticcall arg3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            emit 0x66c4011e: ext_call.return_data[0], 0, 0, msg.sender, arg1, arg3
            if gas_remaining < gas_remaining:
                revert with 0, 17
            return ext_call.return_data[0], 0, 0, 0
        mem[ceil32(return_data.size) + 97] = 27
        mem[ceil32(return_data.size) + 129] = 'ExecFacet._execServiceCall:'
        if return_data.size % 32 != 4:
            revert with 0, 32, 47, 'ExecFacet._execServiceCall:', 'UnexpectedReturndata', 0, 0 >> 120, 0
        if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 42, 'ExecFacet._execServiceCall:', 0x4e6f4572726f7253656c6563746f72, 0, 0 >> 80, 0
        mem[ceil32(return_data.size) + 193] = 'ExecFacet._execServiceCall:'
        mem[ceil32(return_data.size) + 220] = 0
        _490 = mem[164]
        mem[ceil32(return_data.size) + 220 len ceil32(mem[164])] = mem[196 len ceil32(mem[164])]
        if ceil32(mem[164]) > mem[164]:
            mem[ceil32(return_data.size) + mem[164] + 220] = 0
        mem[ceil32(return_data.size) + 161] = mem[164] + 27
        mem[_490 + ceil32(return_data.size) + 220] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_490 + ceil32(return_data.size) + 224] = 32
        mem[_490 + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 161]
        mem[_490 + ceil32(return_data.size) + 288 len ceil32(mem[ceil32(return_data.size) + 161])] = mem[ceil32(return_data.size) + 193 len ceil32(mem[ceil32(return_data.size) + 161])]
        if ceil32(mem[ceil32(return_data.size) + 161]) > mem[ceil32(return_data.size) + 161]:
            mem[_490 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 161] + 288] = 0
        revert with 0, 
                    32,
                    mem[ceil32(return_data.size) + 161],
                    mem[_490 + ceil32(return_data.size) + 288 len ceil32(mem[ceil32(return_data.size) + 161])]
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        call arg1 with:
             gas gas_remaining wei
            args arg2[all]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 47, 'ExecFacet._execServiceCall:', 'UnexpectedReturndata', 0, 0 >> 120, 0
            if not arg3:
                if 0 < eth.balance(this.address):
                    revert with 0, 17
                emit 0x66c4011e: -eth.balance(this.address), 0, 0, msg.sender, arg1, arg3
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                return -eth.balance(this.address), 0, 0, 0
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                emit 0x66c4011e: 0, msg.sender, arg1, arg3
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                else:
                    return 0
            staticcall arg3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < eth.balance(this.address):
                revert with 0, 17
            emit 0x66c4011e: ext_call.return_data[0] - eth.balance(this.address), 0, 0, msg.sender, arg1, arg3
            if gas_remaining < gas_remaining:
                revert with 0, 17
            return ext_call.return_data[0] - eth.balance(this.address), 0, 0, 0
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if not arg3:
                if 0 < eth.balance(this.address):
                    revert with 0, 17
                emit 0x66c4011e: -eth.balance(this.address), 0, 0, msg.sender, arg1, arg3
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                return -eth.balance(this.address), 0, 0, 0
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                emit 0x66c4011e: 0, msg.sender, arg1, arg3
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                else:
                    return 0
            staticcall arg3.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < eth.balance(this.address):
                revert with 0, 17
            emit 0x66c4011e: ext_call.return_data[0] - eth.balance(this.address), 0, 0, msg.sender, arg1, arg3
            if gas_remaining < gas_remaining:
                revert with 0, 17
            return ext_call.return_data[0] - eth.balance(this.address), 0, 0, 0
        mem[ceil32(return_data.size) + 97] = 27
        mem[ceil32(return_data.size) + 129] = 'ExecFacet._execServiceCall:'
        if return_data.size % 32 != 4:
            revert with 0, 32, 47, 'ExecFacet._execServiceCall:', 'UnexpectedReturndata', 0, 0 >> 120, 0
        if Mask(32, 224, mem[128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 42, 'ExecFacet._execServiceCall:', 0x4e6f4572726f7253656c6563746f72, 0, 0 >> 80, 0
        mem[ceil32(return_data.size) + 193] = 'ExecFacet._execServiceCall:'
        mem[ceil32(return_data.size) + 220] = 0
        _478 = mem[164]
        mem[ceil32(return_data.size) + 220 len ceil32(mem[164])] = mem[196 len ceil32(mem[164])]
        if ceil32(mem[164]) > mem[164]:
            mem[ceil32(return_data.size) + mem[164] + 220] = 0
        mem[ceil32(return_data.size) + 161] = mem[164] + 27
        mem[_478 + ceil32(return_data.size) + 220] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_478 + ceil32(return_data.size) + 224] = 32
        mem[_478 + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 161]
        mem[_478 + ceil32(return_data.size) + 288 len ceil32(mem[ceil32(return_data.size) + 161])] = mem[ceil32(return_data.size) + 193 len ceil32(mem[ceil32(return_data.size) + 161])]
        if ceil32(mem[ceil32(return_data.size) + 161]) > mem[ceil32(return_data.size) + 161]:
            mem[_478 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 161] + 288] = 0
        revert with 0, 
                    32,
                    mem[ceil32(return_data.size) + 161],
                    mem[_478 + ceil32(return_data.size) + 288 len ceil32(mem[ceil32(return_data.size) + 161])]
    mem[100] = this.address
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96 len arg2.length] = arg2[all]
    mem[arg2.length + ceil32(return_data.size) + 96] = 0
    call arg1 with:
         gas gas_remaining wei
        args arg2[all]
    if not return_data.size:
        if not ext_call.success:
            if 4 == ext_call.return_data[0] % 32:
                revert with 0, 32, 42, 'ExecFacet._execServiceCall:', 0x4e6f4572726f7253656c6563746f72, 0, 0 >> 80, 0
            revert with 0, 32, 47, 'ExecFacet._execServiceCall:', 'UnexpectedReturndata', 0, 0 >> 120, 0
        if not arg3:
            if 0 < ext_call.return_data[0]:
                revert with 0, 17
            emit 0x66c4011e: -ext_call.return_data[0], 0, 0, msg.sender, arg1, arg3
            if gas_remaining < gas_remaining:
                revert with 0, 17
            return -ext_call.return_data[0], 0, 0, 0
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
            if eth.balance(this.address) < ext_call.return_data[0]:
                revert with 0, 17
            emit 0x66c4011e: eth.balance(this.address) - ext_call.return_data[0], 0, 0, msg.sender, arg1, arg3
            if gas_remaining < gas_remaining:
                revert with 0, 17
            return eth.balance(this.address) - ext_call.return_data[0], 0, 0, 0
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        emit 0x66c4011e: 0, msg.sender, arg1, arg3
        if gas_remaining < gas_remaining:
            revert with 0, 17
        else:
            return 0
    mem[ceil32(return_data.size) + 96] = return_data.size
    mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
        if not arg3:
            if 0 < ext_call.return_data[0]:
                revert with 0, 17
            emit 0x66c4011e: -ext_call.return_data[0], 0, 0, msg.sender, arg1, arg3
            if gas_remaining < gas_remaining:
                revert with 0, 17
            return -ext_call.return_data[0], 0, 0, 0
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg3:
            if eth.balance(this.address) < ext_call.return_data[0]:
                revert with 0, 17
            emit 0x66c4011e: eth.balance(this.address) - ext_call.return_data[0], 0, 0, msg.sender, arg1, arg3
            if gas_remaining < gas_remaining:
                revert with 0, 17
            return eth.balance(this.address) - ext_call.return_data[0], 0, 0, 0
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        emit 0x66c4011e: 0, msg.sender, arg1, arg3
        if gas_remaining < gas_remaining:
            revert with 0, 17
        else:
            return 0
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] = 27
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 129] = 'ExecFacet._execServiceCall:'
    if return_data.size % 32 != 4:
        revert with 0, 32, 47, 'ExecFacet._execServiceCall:', 'UnexpectedReturndata', 0, 0 >> 120, 0
    if Mask(32, 224, mem[ceil32(return_data.size) + 128]) != 0x8c379a000000000000000000000000000000000000000000000000000000000:
        revert with 0, 32, 42, 'ExecFacet._execServiceCall:', 0x4e6f4572726f7253656c6563746f72, 0, 0 >> 80, 0
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 193] = 'ExecFacet._execServiceCall:'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 220] = 0
    _484 = mem[ceil32(return_data.size) + 164]
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 220 len ceil32(mem[ceil32(return_data.size) + 164])] = mem[ceil32(return_data.size) + 196 len ceil32(mem[ceil32(return_data.size) + 164])]
    if ceil32(mem[ceil32(return_data.size) + 164]) > mem[ceil32(return_data.size) + 164]:
        mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 164] + 220] = 0
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 161] = mem[ceil32(return_data.size) + 164] + 27
    mem[_484 + ceil32(return_data.size) + ceil32(return_data.size) + 220] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_484 + ceil32(return_data.size) + ceil32(return_data.size) + 224] = 32
    mem[_484 + ceil32(return_data.size) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 161]
    mem[_484 + ceil32(return_data.size) + ceil32(return_data.size) + 288 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 161])] = mem[ceil32(return_data.size) + ceil32(return_data.size) + 193 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 161])]
    if ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 161]) > mem[ceil32(return_data.size) + ceil32(return_data.size) + 161]:
        mem[_484 + ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 161] + 288] = 0
    revert with 0, 
                32,
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 161],
                mem[_484 + ceil32(return_data.size) + ceil32(return_data.size) + 288 len ceil32(mem[ceil32(return_data.size) + ceil32(return_data.size) + 161])]
}



}
