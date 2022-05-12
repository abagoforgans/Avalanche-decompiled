contract main {




// =====================  Runtime code  =====================


const time = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3

const staking = 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9

const memo = 0x136acd46c134e8269052c62a67042d6bdedde3c9


address stor0;
mapping of uint8 stor1;
uint256 fee;
address feeReceiverAddress;
address routerAddress;

function whitelistMap(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function feeReceiver() payable {
    return feeReceiverAddress
}

function fee() payable {
    return fee
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function setWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor0
    stor1[address(arg1)] = uint8(arg2)
}

function setFee(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor0
    fee = arg1
    feeReceiverAddress = arg2
}

function withdrawEther(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function executeTransaction(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require msg.sender == stor0
    mem[ceil32(ceil32(arg3.length)) + 97 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(ceil32(arg3.length)) + arg3.length + 97] = 0
    call arg1.mem[ceil32(ceil32(arg3.length)) + 97 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg3.length)) + 101 len arg3.length - 4]
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    routerAddress = arg1
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
        call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_25181bb0(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = 0
        require ext_code.size(address(cd[36]))
        call address(cd[36]).redeem(address arg1, bool arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_21] == mem[_21]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function unstake() payable {
    if not stor1[address(msg.sender)]:
        revert with 0, 'Sender not whitelisted'
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function stake() payable {
    if not stor1[address(msg.sender)]:
        revert with 0, 'Sender not whitelisted'
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x23b872dd with:
         gas gas_remaining wei
        args stor0, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.claim(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _26 = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _28 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                gas gas_remaining wei
               args address(_28)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _32 = mem[_31]
        require mem[_31] == mem[_31]
        mem[mem[64]] = 0x9e281a9800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        mem[mem[64] + 36] = _32
        require ext_code.size(address(_26))
        call address(_26).0x9e281a98 with:
             gas gas_remaining wei
            args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, _32
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function deposit(uint256 arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not stor1[address(msg.sender)]:
        revert with 0, 'Sender not whitelisted'
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    if arg1 < ext_call.return_data[0]:
        call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x23b872dd with:
             gas gas_remaining wei
            args stor0, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if fee <= 0:
            require ext_code.size(arg2)
            staticcall arg2.principle() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(routerAddress)
            call routerAddress.0xd015a04c with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, arg1, address(ext_call.return_data[0]), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(arg2)
            call arg2.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], -1, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            staticcall arg2.bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            if arg1 and arg4 > -1 / arg1:
                revert with 'NH{q', 17
            if ext_call.return_data[0] <= arg1 * arg4 / 100000:
                revert with 0, 'Insufficient payout'
        else:
            if arg1 and fee > -1 / arg1:
                revert with 'NH{q', 17
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xa9059cbb with:
                 gas gas_remaining wei
                args feeReceiverAddress, arg1 * fee / 100000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1 < arg1 * fee / 100000:
                revert with 'NH{q', 17
            require ext_code.size(arg2)
            staticcall arg2.principle() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(routerAddress)
            call routerAddress.0xd015a04c with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, arg1 - (arg1 * fee / 100000), address(ext_call.return_data[0]), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(arg2)
            call arg2.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], -1, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            staticcall arg2.bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            if arg1 - (arg1 * fee / 100000) and arg4 > -1 / arg1 - (arg1 * fee / 100000):
                revert with 'NH{q', 17
            if ext_call.return_data[0] <= (arg1 * arg4) - (arg1 * fee / 100000 * arg4) / 100000:
                revert with 0, 'Insufficient payout'
    else:
        call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x23b872dd with:
             gas gas_remaining wei
            args stor0, address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if fee <= 0:
            require ext_code.size(arg2)
            staticcall arg2.principle() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(routerAddress)
            call routerAddress.0xd015a04c with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, ext_call.return_data[0], address(ext_call.return_data[0]), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(arg2)
            call arg2.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], -1, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            staticcall arg2.bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            if ext_call.return_data[0] and arg4 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] <= ext_call.return_data[0] * arg4 / 100000:
                revert with 0, 'Insufficient payout'
        else:
            if ext_call.return_data[0] and fee > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
            call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0xa9059cbb with:
                 gas gas_remaining wei
                args feeReceiverAddress, ext_call.return_data[0] * fee / 100000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0] < ext_call.return_data[0] * fee / 100000:
                revert with 'NH{q', 17
            require ext_code.size(arg2)
            staticcall arg2.principle() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(routerAddress)
            call routerAddress.0xd015a04c with:
                 gas gas_remaining wei
                args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, ext_call.return_data[0] - (ext_call.return_data[0] * fee / 100000), address(ext_call.return_data[0]), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(arg2)
            call arg2.deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], -1, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            staticcall arg2.bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            if ext_call.return_data[0] - (ext_call.return_data[0] * fee / 100000) and arg4 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * fee / 100000):
                revert with 'NH{q', 17
            if ext_call.return_data[0] <= (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * fee / 100000 * arg4) / 100000:
                revert with 0, 'Insufficient payout'
}

function multicall(bytes[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) + 32
            mem[_103] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[_103 + 32 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[_103 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + 32] = 0
            _104 = mem[64]
            mem[64] = mem[64] + 96
            mem[_104] = 39
            mem[_104 + 32 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
            if ext_code.size(this.address) <= 0:
                revert with 0, 'Address: delegate call to non-contract'
            _109 = mem[64]
            s = 0
            while s < cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                mem[_109 + s] = mem[_103 + s + 32]
                s = s + 32
                continue 
            if ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) <= cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                delegate this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _109 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                if not return_data.size:
                    if delegate.return_code:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = 96
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    _213 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _226 = mem[_104]
                    mem[mem[64] + 36] = mem[_104]
                    idx = 0
                    while idx < _226:
                        mem[_213 + idx + 68] = mem[_104 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_226) > _226:
                        mem[_213 + _226 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _213 + ceil32(_226) + -mem[64] + 68
                _205 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_205] = return_data.size
                mem[_205 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _205
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                _215 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _228 = mem[_104]
                mem[mem[64] + 36] = mem[_104]
                idx = 0
                while idx < _228:
                    mem[_215 + idx + 68] = mem[_104 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_228) > _228:
                    mem[_215 + _228 + 68] = 0
                revert with memory
                  from mem[64]
                   len _215 + ceil32(_228) + -mem[64] + 68
            mem[_109 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
            delegate this.address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _109 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
            if not return_data.size:
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _219 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _230 = mem[_104]
                mem[mem[64] + 36] = mem[_104]
                idx = 0
                while idx < _230:
                    mem[_219 + idx + 68] = mem[_104 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_230) > _230:
                    mem[_219 + _230 + 68] = 0
                revert with memory
                  from mem[64]
                   len _219 + ceil32(_230) + -mem[64] + 68
            _207 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_207] = return_data.size
            mem[_207 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _207
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _221 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _232 = mem[_104]
            mem[mem[64] + 36] = mem[_104]
            idx = 0
            while idx < _232:
                mem[_221 + idx + 68] = mem[_104 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_232) > _232:
                mem[_221 + _232 + 68] = 0
            revert with memory
              from mem[64]
               len _221 + ceil32(_232) + -mem[64] + 68
        _100 = mem[64]
        mem[mem[64]] = 32
        _101 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _101:
            mem[u] = t + -_100 - 64
            _198 = mem[s]
            _202 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _202:
                mem[t + v + 32] = mem[_198 + v + 32]
                v = v + 32
                continue 
            if ceil32(_202) > _202:
                mem[t + _202 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_202) + 32
            u = u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = arg1.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            _208 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) + 32
            mem[_208] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[_208 + 32 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[_208 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + 32] = 0
            _209 = mem[64]
            mem[64] = mem[64] + 96
            mem[_209] = 39
            mem[_209 + 32 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
            if ext_code.size(this.address) <= 0:
                revert with 0, 'Address: delegate call to non-contract'
            _224 = mem[64]
            s = 0
            while s < cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                mem[_224 + s] = mem[_208 + s + 32]
                s = s + 32
                continue 
            if ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) <= cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                delegate this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _224 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
                if not return_data.size:
                    if delegate.return_code:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = 96
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    _312 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _322 = mem[_209]
                    mem[mem[64] + 36] = mem[_209]
                    idx = 0
                    while idx < _322:
                        mem[_312 + idx + 68] = mem[_209 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_322) > _322:
                        mem[_312 + _322 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _312 + ceil32(_322) + -mem[64] + 68
                _298 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_298] = return_data.size
                mem[_298 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _298
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                _314 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _324 = mem[_209]
                mem[mem[64] + 36] = mem[_209]
                idx = 0
                while idx < _324:
                    mem[_314 + idx + 68] = mem[_209 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_324) > _324:
                    mem[_314 + _324 + 68] = 0
                revert with memory
                  from mem[64]
                   len _314 + ceil32(_324) + -mem[64] + 68
            mem[_224 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
            delegate this.address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _224 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
            if not return_data.size:
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _318 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _326 = mem[_209]
                mem[mem[64] + 36] = mem[_209]
                idx = 0
                while idx < _326:
                    mem[_318 + idx + 68] = mem[_209 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_326) > _326:
                    mem[_318 + _326 + 68] = 0
                revert with memory
                  from mem[64]
                   len _318 + ceil32(_326) + -mem[64] + 68
            _304 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_304] = return_data.size
            mem[_304 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _304
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _320 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _328 = mem[_209]
            mem[mem[64] + 36] = mem[_209]
            idx = 0
            while idx < _328:
                mem[_320 + idx + 68] = mem[_209 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_328) > _328:
                mem[_320 + _328 + 68] = 0
            revert with memory
              from mem[64]
               len _320 + ceil32(_328) + -mem[64] + 68
        _200 = mem[64]
        mem[mem[64]] = 32
        _204 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _204:
            mem[u] = t + -_200 - 64
            _293 = mem[s]
            _296 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _296:
                mem[t + v + 32] = mem[_293 + v + 32]
                v = v + 32
                continue 
            if ceil32(_296) > _296:
                mem[t + _296 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_296) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
