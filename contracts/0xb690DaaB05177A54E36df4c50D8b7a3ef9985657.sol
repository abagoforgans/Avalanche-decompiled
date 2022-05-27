contract main {




// =====================  Runtime code  =====================


#
#  - approveToken(address arg1, address arg2, uint256 arg3)
#  - transferTokenFrom(address arg1, address arg2, address arg3, uint256 arg4)
#  - transferToken(address arg1, address arg2, uint256 arg3)
#
const WMEMO = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b

const STAKING_MANAGER = 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9

const TIME = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3

const MEMO = 0x136acd46c134e8269052c62a67042d6bdedde3c9

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d


address owner;
array of struct stor1;
uint256 stor2;
mapping of uint8 stor3;

function owner() {
    return owner
}

function sub_d0af596c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    owner = arg1
}

function swapExact(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not stor3[msg.sender]:
        revert with 0, 'cauldron'
    revert with 0, 'exact'
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function wrap(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    require ext_code.size(arg1)
    call arg1.deposit() with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unwrap(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    require ext_code.size(arg1)
    call arg1.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_26b7256f(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    require ext_code.size(address(arg1))
    call address(arg1).withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(arg2) with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
}

function sub_520b9a0d(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ce5393a8(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Only the owner can call this'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_5506dffe(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[100] = this.address
    staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[32] = 3
    if not stor3[address(cd[4])]:
        revert with 0, 'cauldron'
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ('cd', 36).length
    mem[64] = ceil32(return_data.size) + (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = -1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        stor1.length = ('cd', 68).length
        mem[0] = 1
        if not ('cd', 68).length:
            idx = 0
            while stor1.length > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128] = 0x912860c500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 132] = 128
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 260] = ('cd', 36).length
            idx = 0
            s = ceil32(return_data.size) + (32 * ('cd', 36).length) + 292
            t = cd[36] + 36
            while idx < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 164] = (32 * ('cd', 36).length) + 160
            mem[ceil32(return_data.size) + (64 * ('cd', 36).length) + 292] = ('cd', 36).length
            s = 0
            s = ceil32(return_data.size) + (64 * ('cd', 36).length) + 324
            s = ceil32(return_data.size) + 128
            while ('cd', 36).length < ('cd', 36).length:
                mem[cd[36] + (32 * ('cd', 36).length) + 36] = mem[s]
                s = ('cd', 36).length + 1
                s = cd[36] + (32 * ('cd', 36).length) + 68
                s = s + 32
                continue 
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 196] = this.address
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 228] = this.address
            require ext_code.size(address(cd[4]))
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[36] + (32 * ('cd', 36).length) + -mem[64] + 32]
            stor2 = 0
            idx = 0
            while idx < stor1.length:
                mem[0] = 1
                stor1[idx].field_0 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            stor1.length = 0
            mem[0] = 1
            idx = 0
            while stor1.length > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                _589 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if ext_call.return_data[0] > !cd[100]:
                    revert with 0, 17
                if ext_call.return_data[0] + cd[100] > mem[_589]:
                    revert with 0, 'profit'
                else:
                    return 0
            _590 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if ext_call.return_data[0] > !cd[100]:
                revert with 0, 17
            if ext_call.return_data[0] + cd[100] > mem[_590]:
                revert with 0, 'profit'
        else:
            s = 0
            idx = cd[68] + 36
            while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
                stor1[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
            while stor1.length > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128] = 0x912860c500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 132] = 128
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 260] = ('cd', 36).length
            idx = 0
            s = ceil32(return_data.size) + (32 * ('cd', 36).length) + 292
            t = cd[36] + 36
            while idx < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 164] = (32 * ('cd', 36).length) + 160
            mem[ceil32(return_data.size) + (64 * ('cd', 36).length) + 292] = ('cd', 36).length
            s = 0
            s = ceil32(return_data.size) + (64 * ('cd', 36).length) + 324
            s = ceil32(return_data.size) + 128
            while ('cd', 36).length < ('cd', 36).length:
                mem[cd[36] + (32 * ('cd', 36).length) + 36] = mem[s]
                s = ('cd', 36).length + 1
                s = cd[36] + (32 * ('cd', 36).length) + 68
                s = s + 32
                continue 
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 196] = this.address
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 228] = this.address
            require ext_code.size(address(cd[4]))
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[36] + (32 * ('cd', 36).length) + -mem[64] + 32]
            stor2 = 0
            idx = 0
            while idx < stor1.length:
                mem[0] = 1
                stor1[idx].field_0 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            stor1.length = 0
            mem[0] = 1
            idx = 0
            while stor1.length > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                _653 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if ext_call.return_data[0] > !cd[100]:
                    revert with 0, 17
                if ext_call.return_data[0] + cd[100] > mem[_653]:
                    revert with 0, 'profit'
                else:
                    return 0
            _654 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if ext_call.return_data[0] > !cd[100]:
                revert with 0, 17
            if ext_call.return_data[0] + cd[100] > mem[_654]:
                revert with 0, 'profit'
    else:
        mem[ceil32(return_data.size) + 128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = -1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        stor1.length = ('cd', 68).length
        mem[0] = 1
        if not ('cd', 68).length:
            idx = 0
            while stor1.length > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128] = 0x912860c500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 132] = 128
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 260] = ('cd', 36).length
            idx = 0
            s = ceil32(return_data.size) + (32 * ('cd', 36).length) + 292
            t = cd[36] + 36
            while idx < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 164] = (32 * ('cd', 36).length) + 160
            mem[ceil32(return_data.size) + (64 * ('cd', 36).length) + 292] = ('cd', 36).length
            s = 0
            s = ceil32(return_data.size) + (64 * ('cd', 36).length) + 324
            s = ceil32(return_data.size) + 128
            while ('cd', 36).length < ('cd', 36).length:
                mem[cd[36] + (32 * ('cd', 36).length) + 36] = mem[s]
                s = ('cd', 36).length + 1
                s = cd[36] + (32 * ('cd', 36).length) + 68
                s = s + 32
                continue 
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 196] = this.address
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 228] = this.address
            require ext_code.size(address(cd[4]))
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[36] + (32 * ('cd', 36).length) + -mem[64] + 32]
            stor2 = 0
            idx = 0
            while idx < stor1.length:
                mem[0] = 1
                stor1[idx].field_0 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            stor1.length = 0
            mem[0] = 1
            idx = 0
            while stor1.length > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                _591 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if ext_call.return_data[0] > !cd[100]:
                    revert with 0, 17
                if ext_call.return_data[0] + cd[100] > mem[_591]:
                    revert with 0, 'profit'
                else:
                    return 0
            _592 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if ext_call.return_data[0] > !cd[100]:
                revert with 0, 17
            if ext_call.return_data[0] + cd[100] > mem[_592]:
                revert with 0, 'profit'
        else:
            s = 0
            idx = cd[68] + 36
            while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
                stor1[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
            while stor1.length > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 128] = 0x912860c500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 132] = 128
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 260] = ('cd', 36).length
            idx = 0
            s = ceil32(return_data.size) + (32 * ('cd', 36).length) + 292
            t = cd[36] + 36
            while idx < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 164] = (32 * ('cd', 36).length) + 160
            mem[ceil32(return_data.size) + (64 * ('cd', 36).length) + 292] = ('cd', 36).length
            s = 0
            s = ceil32(return_data.size) + (64 * ('cd', 36).length) + 324
            s = ceil32(return_data.size) + 128
            while ('cd', 36).length < ('cd', 36).length:
                mem[cd[36] + (32 * ('cd', 36).length) + 36] = mem[s]
                s = ('cd', 36).length + 1
                s = cd[36] + (32 * ('cd', 36).length) + 68
                s = s + 32
                continue 
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 196] = this.address
            mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 228] = this.address
            require ext_code.size(address(cd[4]))
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[36] + (32 * ('cd', 36).length) + -mem[64] + 32]
            stor2 = 0
            idx = 0
            while idx < stor1.length:
                mem[0] = 1
                stor1[idx].field_0 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            stor1.length = 0
            mem[0] = 1
            idx = 0
            while stor1.length > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                _655 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if ext_call.return_data[0] > !cd[100]:
                    revert with 0, 17
                if ext_call.return_data[0] + cd[100] > mem[_655]:
                    revert with 0, 'profit'
                else:
                    return 0
            _656 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if ext_call.return_data[0] > !cd[100]:
                revert with 0, 17
            if ext_call.return_data[0] + cd[100] > mem[_656]:
                revert with 0, 'profit'
    return stor2
}

function swap(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[32] = 3
    if not stor3[msg.sender]:
        revert with 0, 'cauldron'
    call msg.sender.bentoBox() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = msg.sender
    staticcall address(ext_call.return_data[0]).masterContractOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'master'
    mem[(2 * ceil32(return_data.size)) + 260] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMasterContractApproval(address arg1, address arg2, bool arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args this.address, address(ext_call.return_data[0]), 1, 0, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    mem[(2 * ceil32(return_data.size)) + 228] = arg5
    call address(ext_call.return_data[0]).withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args address(arg1), this.address, this.address, 0, arg5
    mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
    require return_data.size >= 64
    mem[64] = (4 * ceil32(return_data.size)) + 1120
    mem[(4 * ceil32(return_data.size)) + 96 len 1024] = call.data[calldata.size len 1024]
    if 0 >= stor1.length:
        revert with 0, 50
    mem[0] = 1
    if Mask(8, 248, uint256(stor1.field_0)) == 0x200000000000000000000000000000000000000000000000000000000000000:
        mem[(4 * ceil32(return_data.size)) + 1124] = ext_call.return_data[0]
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.unwrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 1120
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 1120] = 0x9ebea88c00000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 1124] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 1156] = 0
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        s = Mask(8, 248, uint256(stor1.field_0))
        s = 0
        idx = 1
        t = ext_call.return_data[0]
        while idx < stor1.length:
            mem[0] = 1
            if Mask(8, 248, stor1[idx].field_0):
                if Mask(8, 248, stor1[idx].field_0) == 0x500000000000000000000000000000000000000000000000000000000000000:
                    mem[mem[64] + 4] = this.address
                    staticcall stor1[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _529 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s + 1 >= 32:
                        revert with 0, 50
                    mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = mem[_529]
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s + 1
                    idx = idx + 1
                    t = t
                    continue 
                if Mask(8, 248, stor1[idx].field_0) != 0x600000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'op'
                if s >= 32:
                    revert with 0, 50
                if idx + 1 >= stor1.length:
                    revert with 0, 50
                mem[0] = 1
                mem[mem[64] + 4] = stor1[idx].field_256
                mem[mem[64] + 36] = 0
                call stor1[idx].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1[idx].field_256, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _577 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_577] == bool(mem[_577])
                if not mem[_577]:
                    revert with 0, 'xfer'
                if s >= 32:
                    revert with 0, 50
                if s + 1 >= 32:
                    revert with 0, 50
                mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0
                s = Mask(8, 248, stor1[idx].field_0)
                s = s + 1
                idx = idx + 2
                t = 0
                continue 
            if s >= 32:
                revert with 0, 50
            if idx + 3 >= stor1.length:
                revert with 0, 50
            if idx + 1 >= stor1.length:
                revert with 0, 50
            if idx + 2 >= stor1.length:
                revert with 0, 50
            mem[0] = 1
            staticcall stor1[idx].field_512.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor1[idx].field_0 < stor1[idx].field_256:
                _660 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _668 = mem[_660]
                require mem[_660] == mem[_660 + 18 len 14]
                _676 = mem[_660 + 32]
                require mem[_660 + 32] == mem[_660 + 50 len 14]
                require mem[_660 + 64] == mem[_660 + 92 len 4]
                if stor1[idx].field_0 == stor1[idx].field_0:
                    if not 1000 * mem[_660 + 18 len 14]:
                        revert with 0, 18
                    if stor1[idx].field_0 == stor1[idx].field_0:
                        _710 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_710 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_710 + 36] = 0
                        mem[_710 + 68] = 0 / 1000 * Mask(112, 0, _668)
                        mem[_710 + 100] = stor1[idx].field_768
                        mem[_710 + 132] = 128
                        mem[_710 + 164] = mem[_710]
                        t = 0
                        while t < mem[_710]:
                            mem[t + _710 + 196] = mem[t + _710 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_710]) > mem[_710]:
                            mem[mem[_710] + _710 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_710]) + _710 + -mem[64] + 192]
                    else:
                        _711 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_711 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_711 + 36] = 0 / 1000 * Mask(112, 0, _668)
                        mem[_711 + 68] = 0
                        mem[_711 + 100] = stor1[idx].field_768
                        mem[_711 + 132] = 128
                        mem[_711 + 164] = mem[_711]
                        t = 0
                        while t < mem[_711]:
                            mem[t + _711 + 196] = mem[t + _711 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_711]) > mem[_711]:
                            mem[mem[_711] + _711 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_711]) + _711 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s >= 32:
                        revert with 0, 50
                    if this.address == stor1[idx].field_768:
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _668)
                        continue 
                    if s + 1 >= 32:
                        revert with 0, 50
                    mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _668)
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s + 1
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _668)
                    continue 
                if not 1000 * mem[_660 + 50 len 14]:
                    revert with 0, 18
                if stor1[idx].field_0 == stor1[idx].field_0:
                    _712 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_712 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_712 + 36] = 0
                    mem[_712 + 68] = 0 / 1000 * Mask(112, 0, _676)
                    mem[_712 + 100] = stor1[idx].field_768
                    mem[_712 + 132] = 128
                    mem[_712 + 164] = mem[_712]
                    t = 0
                    while t < mem[_712]:
                        mem[t + _712 + 196] = mem[t + _712 + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_712]) > mem[_712]:
                        mem[mem[_712] + _712 + 196] = 0
                    require ext_code.size(stor1[idx].field_512)
                    call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / 1000 * Mask(112, 0, _676), stor1[idx].field_768, 128, mem[_712], mem[_712 + 196 len ceil32(mem[_712])]
                else:
                    _713 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_713 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_713 + 36] = 0 / 1000 * Mask(112, 0, _676)
                    mem[_713 + 68] = 0
                    mem[_713 + 100] = stor1[idx].field_768
                    mem[_713 + 132] = 128
                    mem[_713 + 164] = mem[_713]
                    t = 0
                    while t < mem[_713]:
                        mem[t + _713 + 196] = mem[t + _713 + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_713]) > mem[_713]:
                        mem[mem[_713] + _713 + 196] = 0
                    require ext_code.size(stor1[idx].field_512)
                    call stor1[idx].field_512.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_713]) + _713 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if s >= 32:
                    revert with 0, 50
                if this.address == stor1[idx].field_768:
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _676)
                    continue 
                if s + 1 >= 32:
                    revert with 0, 50
                mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _676)
                s = Mask(8, 248, stor1[idx].field_0)
                s = s + 1
                idx = idx + 4
                t = 0 / 1000 * Mask(112, 0, _676)
                continue 
            _661 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _669 = mem[_661]
            require mem[_661] == mem[_661 + 18 len 14]
            _677 = mem[_661 + 32]
            require mem[_661 + 32] == mem[_661 + 50 len 14]
            require mem[_661 + 64] == mem[_661 + 92 len 4]
            if stor1[idx].field_0 == stor1[idx].field_256:
                if not 1000 * mem[_661 + 18 len 14]:
                    revert with 0, 18
                if stor1[idx].field_0 == stor1[idx].field_256:
                    _714 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_714 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_714 + 36] = 0
                    mem[_714 + 68] = 0 / 1000 * Mask(112, 0, _669)
                    mem[_714 + 100] = stor1[idx].field_768
                    mem[_714 + 132] = 128
                    mem[_714 + 164] = mem[_714]
                    t = 0
                    while t < mem[_714]:
                        mem[t + _714 + 196] = mem[t + _714 + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_714]) > mem[_714]:
                        mem[mem[_714] + _714 + 196] = 0
                    require ext_code.size(stor1[idx].field_512)
                    call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / 1000 * Mask(112, 0, _669), stor1[idx].field_768, 128, mem[_714], mem[_714 + 196 len ceil32(mem[_714])]
                else:
                    _715 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_715 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_715 + 36] = 0 / 1000 * Mask(112, 0, _669)
                    mem[_715 + 68] = 0
                    mem[_715 + 100] = stor1[idx].field_768
                    mem[_715 + 132] = 128
                    mem[_715 + 164] = mem[_715]
                    t = 0
                    while t < mem[_715]:
                        mem[t + _715 + 196] = mem[t + _715 + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_715]) > mem[_715]:
                        mem[mem[_715] + _715 + 196] = 0
                    require ext_code.size(stor1[idx].field_512)
                    call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / 1000 * Mask(112, 0, _669), 0, stor1[idx].field_768, 128, mem[_715], mem[_715 + 196 len ceil32(mem[_715])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if s >= 32:
                    revert with 0, 50
                if this.address == stor1[idx].field_768:
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _669)
                    continue 
                if s + 1 >= 32:
                    revert with 0, 50
                mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _669)
                s = Mask(8, 248, stor1[idx].field_0)
                s = s + 1
                idx = idx + 4
                t = 0 / 1000 * Mask(112, 0, _669)
                continue 
            if not 1000 * mem[_661 + 50 len 14]:
                revert with 0, 18
            if stor1[idx].field_0 == stor1[idx].field_256:
                _716 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_716 + 36] = 0
                mem[_716 + 68] = 0 / 1000 * Mask(112, 0, _677)
                mem[_716 + 100] = stor1[idx].field_768
                mem[_716 + 132] = 128
                mem[_716 + 164] = mem[_716]
                t = 0
                while t < mem[_716]:
                    mem[t + _716 + 196] = mem[t + _716 + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_716]) > mem[_716]:
                    mem[mem[_716] + _716 + 196] = 0
                require ext_code.size(stor1[idx].field_512)
                call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0 / 1000 * Mask(112, 0, _677), stor1[idx].field_768, 128, mem[_716], mem[_716 + 196 len ceil32(mem[_716])]
            else:
                _717 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_717 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_717 + 36] = 0 / 1000 * Mask(112, 0, _677)
                mem[_717 + 68] = 0
                mem[_717 + 100] = stor1[idx].field_768
                mem[_717 + 132] = 128
                mem[_717 + 164] = mem[_717]
                t = 0
                while t < mem[_717]:
                    mem[t + _717 + 196] = mem[t + _717 + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_717]) > mem[_717]:
                    mem[mem[_717] + _717 + 196] = 0
                require ext_code.size(stor1[idx].field_512)
                call stor1[idx].field_512.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_717]) + _717 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s >= 32:
                revert with 0, 50
            if this.address == stor1[idx].field_768:
                s = Mask(8, 248, stor1[idx].field_0)
                s = s
                idx = idx + 4
                t = 0 / 1000 * Mask(112, 0, _677)
                continue 
            if s + 1 >= 32:
                revert with 0, 50
            mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _677)
            s = Mask(8, 248, stor1[idx].field_0)
            s = s + 1
            idx = idx + 4
            t = 0 / 1000 * Mask(112, 0, _677)
            continue 
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = arg4
        mem[mem[64] + 68] = 1
        staticcall address(ext_call.return_data[0]).toAmount(address arg1, uint256 arg2, bool arg3) with:
                gas gas_remaining wei
               args address(arg2), arg4, 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _496 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _510 = mem[_496]
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = _510
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _510
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _542 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_542] == bool(mem[_542])
        mem[mem[64] + 36] = address(ext_call.return_data[0])
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 0
        mem[mem[64] + 132] = arg4
        call address(ext_call.return_data[0]).deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args address(arg2), address(ext_call.return_data[0]), this.address, 0, arg4
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        mem[mem[64] + 4] = this.address
        staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _620 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        stor2 = mem[_620]
    else:
        if Mask(8, 248, uint256(stor1.field_0)) != 0x300000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, uint256(stor1.field_0)) != 0x100000000000000000000000000000000000000000000000000000000000000:
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                s = Mask(8, 248, uint256(stor1.field_0))
                s = 0
                idx = 0
                t = ext_call.return_data[0]
                while idx < stor1.length:
                    mem[0] = 1
                    if Mask(8, 248, stor1[idx].field_0):
                        if Mask(8, 248, stor1[idx].field_0) == 0x500000000000000000000000000000000000000000000000000000000000000:
                            mem[mem[64] + 4] = this.address
                            staticcall stor1[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _517 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s + 1 >= 32:
                                revert with 0, 50
                            mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = mem[_517]
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s + 1
                            idx = idx + 1
                            t = t
                            continue 
                        if Mask(8, 248, stor1[idx].field_0) != 0x600000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'op'
                        if s >= 32:
                            revert with 0, 50
                        if idx + 1 >= stor1.length:
                            revert with 0, 50
                        mem[0] = 1
                        mem[mem[64] + 4] = stor1[idx].field_256
                        mem[mem[64] + 36] = 0
                        call stor1[idx].field_0.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1[idx].field_256, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _574 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_574] == bool(mem[_574])
                        if not mem[_574]:
                            revert with 0, 'xfer'
                        if s >= 32:
                            revert with 0, 50
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 2
                        t = 0
                        continue 
                    if s >= 32:
                        revert with 0, 50
                    if idx + 3 >= stor1.length:
                        revert with 0, 50
                    if idx + 1 >= stor1.length:
                        revert with 0, 50
                    if idx + 2 >= stor1.length:
                        revert with 0, 50
                    mem[0] = 1
                    staticcall stor1[idx].field_512.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor1[idx].field_0 < stor1[idx].field_256:
                        _654 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _662 = mem[_654]
                        require mem[_654] == mem[_654 + 18 len 14]
                        _670 = mem[_654 + 32]
                        require mem[_654 + 32] == mem[_654 + 50 len 14]
                        require mem[_654 + 64] == mem[_654 + 92 len 4]
                        if stor1[idx].field_0 == stor1[idx].field_0:
                            if not 1000 * mem[_654 + 18 len 14]:
                                revert with 0, 18
                            if stor1[idx].field_0 == stor1[idx].field_0:
                                _686 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_686 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_686 + 36] = 0
                                mem[_686 + 68] = 0 / 1000 * Mask(112, 0, _662)
                                mem[_686 + 100] = stor1[idx].field_768
                                mem[_686 + 132] = 128
                                mem[_686 + 164] = mem[_686]
                                t = 0
                                while t < mem[_686]:
                                    mem[t + _686 + 196] = mem[t + _686 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_686]) > mem[_686]:
                                    mem[mem[_686] + _686 + 196] = 0
                                require ext_code.size(stor1[idx].field_512)
                                call stor1[idx].field_512.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(mem[_686]) + _686 + -mem[64] + 192]
                            else:
                                _687 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_687 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_687 + 36] = 0 / 1000 * Mask(112, 0, _662)
                                mem[_687 + 68] = 0
                                mem[_687 + 100] = stor1[idx].field_768
                                mem[_687 + 132] = 128
                                mem[_687 + 164] = mem[_687]
                                t = 0
                                while t < mem[_687]:
                                    mem[t + _687 + 196] = mem[t + _687 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_687]) > mem[_687]:
                                    mem[mem[_687] + _687 + 196] = 0
                                require ext_code.size(stor1[idx].field_512)
                                call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / 1000 * Mask(112, 0, _662), 0, stor1[idx].field_768, 128, mem[_687], mem[_687 + 196 len ceil32(mem[_687])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s >= 32:
                                revert with 0, 50
                            if this.address == stor1[idx].field_768:
                                s = Mask(8, 248, stor1[idx].field_0)
                                s = s
                                idx = idx + 4
                                t = 0 / 1000 * Mask(112, 0, _662)
                                continue 
                            if s + 1 >= 32:
                                revert with 0, 50
                            mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _662)
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s + 1
                            idx = idx + 4
                            t = 0 / 1000 * Mask(112, 0, _662)
                            continue 
                        if not 1000 * mem[_654 + 50 len 14]:
                            revert with 0, 18
                        if stor1[idx].field_0 == stor1[idx].field_0:
                            _688 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_688 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_688 + 36] = 0
                            mem[_688 + 68] = 0 / 1000 * Mask(112, 0, _670)
                            mem[_688 + 100] = stor1[idx].field_768
                            mem[_688 + 132] = 128
                            mem[_688 + 164] = mem[_688]
                            t = 0
                            while t < mem[_688]:
                                mem[t + _688 + 196] = mem[t + _688 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_688]) > mem[_688]:
                                mem[mem[_688] + _688 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(mem[_688]) + _688 + -mem[64] + 192]
                        else:
                            _689 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_689 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_689 + 36] = 0 / 1000 * Mask(112, 0, _670)
                            mem[_689 + 68] = 0
                            mem[_689 + 100] = stor1[idx].field_768
                            mem[_689 + 132] = 128
                            mem[_689 + 164] = mem[_689]
                            t = 0
                            while t < mem[_689]:
                                mem[t + _689 + 196] = mem[t + _689 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_689]) > mem[_689]:
                                mem[mem[_689] + _689 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / 1000 * Mask(112, 0, _670), 0, stor1[idx].field_768, 128, mem[_689], mem[_689 + 196 len ceil32(mem[_689])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s >= 32:
                            revert with 0, 50
                        if this.address == stor1[idx].field_768:
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s
                            idx = idx + 4
                            t = 0 / 1000 * Mask(112, 0, _670)
                            continue 
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _670)
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _670)
                        continue 
                    _655 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _663 = mem[_655]
                    require mem[_655] == mem[_655 + 18 len 14]
                    _671 = mem[_655 + 32]
                    require mem[_655 + 32] == mem[_655 + 50 len 14]
                    require mem[_655 + 64] == mem[_655 + 92 len 4]
                    if stor1[idx].field_0 == stor1[idx].field_256:
                        if not 1000 * mem[_655 + 18 len 14]:
                            revert with 0, 18
                        if stor1[idx].field_0 == stor1[idx].field_256:
                            _690 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_690 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_690 + 36] = 0
                            mem[_690 + 68] = 0 / 1000 * Mask(112, 0, _663)
                            mem[_690 + 100] = stor1[idx].field_768
                            mem[_690 + 132] = 128
                            mem[_690 + 164] = mem[_690]
                            t = 0
                            while t < mem[_690]:
                                mem[t + _690 + 196] = mem[t + _690 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_690]) > mem[_690]:
                                mem[mem[_690] + _690 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 1000 * Mask(112, 0, _663), stor1[idx].field_768, 128, mem[_690], mem[_690 + 196 len ceil32(mem[_690])]
                        else:
                            _691 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_691 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_691 + 36] = 0 / 1000 * Mask(112, 0, _663)
                            mem[_691 + 68] = 0
                            mem[_691 + 100] = stor1[idx].field_768
                            mem[_691 + 132] = 128
                            mem[_691 + 164] = mem[_691]
                            t = 0
                            while t < mem[_691]:
                                mem[t + _691 + 196] = mem[t + _691 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_691]) > mem[_691]:
                                mem[mem[_691] + _691 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / 1000 * Mask(112, 0, _663), 0, stor1[idx].field_768, 128, mem[_691], mem[_691 + 196 len ceil32(mem[_691])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s >= 32:
                            revert with 0, 50
                        if this.address == stor1[idx].field_768:
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s
                            idx = idx + 4
                            t = 0 / 1000 * Mask(112, 0, _663)
                            continue 
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _663)
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _663)
                        continue 
                    if not 1000 * mem[_655 + 50 len 14]:
                        revert with 0, 18
                    if stor1[idx].field_0 == stor1[idx].field_256:
                        _692 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_692 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_692 + 36] = 0
                        mem[_692 + 68] = 0 / 1000 * Mask(112, 0, _671)
                        mem[_692 + 100] = stor1[idx].field_768
                        mem[_692 + 132] = 128
                        mem[_692 + 164] = mem[_692]
                        t = 0
                        while t < mem[_692]:
                            mem[t + _692 + 196] = mem[t + _692 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_692]) > mem[_692]:
                            mem[mem[_692] + _692 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_692]) + _692 + -mem[64] + 192]
                    else:
                        _693 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_693 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_693 + 36] = 0 / 1000 * Mask(112, 0, _671)
                        mem[_693 + 68] = 0
                        mem[_693 + 100] = stor1[idx].field_768
                        mem[_693 + 132] = 128
                        mem[_693 + 164] = mem[_693]
                        t = 0
                        while t < mem[_693]:
                            mem[t + _693 + 196] = mem[t + _693 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_693]) > mem[_693]:
                            mem[mem[_693] + _693 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / 1000 * Mask(112, 0, _671), 0, stor1[idx].field_768, 128, mem[_693], mem[_693 + 196 len ceil32(mem[_693])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s >= 32:
                        revert with 0, 50
                    if this.address == stor1[idx].field_768:
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _671)
                        continue 
                    if s + 1 >= 32:
                        revert with 0, 50
                    mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _671)
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s + 1
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _671)
                    continue 
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = arg4
                mem[mem[64] + 68] = 1
                staticcall address(ext_call.return_data[0]).toAmount(address arg1, uint256 arg2, bool arg3) with:
                        gas gas_remaining wei
                       args address(arg2), arg4, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _490 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _498 = mem[_490]
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = _498
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _498
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _530 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_530] == bool(mem[_530])
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = arg4
                call address(ext_call.return_data[0]).deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args address(arg2), address(ext_call.return_data[0]), this.address, 0, arg4
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                mem[mem[64] + 4] = this.address
                staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _614 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                stor2 = mem[_614]
            else:
                require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
                call 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.leave(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 1124] = this.address
                staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
                mem[64] = (6 * ceil32(return_data.size)) + 1120
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                s = Mask(8, 248, uint256(stor1.field_0))
                s = 0
                idx = 1
                t = ext_call.return_data[0]
                while idx < stor1.length:
                    mem[0] = 1
                    if Mask(8, 248, stor1[idx].field_0):
                        if Mask(8, 248, stor1[idx].field_0) == 0x500000000000000000000000000000000000000000000000000000000000000:
                            mem[mem[64] + 4] = this.address
                            staticcall stor1[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _521 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s + 1 >= 32:
                                revert with 0, 50
                            mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = mem[_521]
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s + 1
                            idx = idx + 1
                            t = t
                            continue 
                        if Mask(8, 248, stor1[idx].field_0) != 0x600000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'op'
                        if s >= 32:
                            revert with 0, 50
                        if idx + 1 >= stor1.length:
                            revert with 0, 50
                        mem[0] = 1
                        mem[mem[64] + 4] = stor1[idx].field_256
                        mem[mem[64] + 36] = 0
                        call stor1[idx].field_0.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1[idx].field_256, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _575 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_575] == bool(mem[_575])
                        if not mem[_575]:
                            revert with 0, 'xfer'
                        if s >= 32:
                            revert with 0, 50
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 2
                        t = 0
                        continue 
                    if s >= 32:
                        revert with 0, 50
                    if idx + 3 >= stor1.length:
                        revert with 0, 50
                    if idx + 1 >= stor1.length:
                        revert with 0, 50
                    if idx + 2 >= stor1.length:
                        revert with 0, 50
                    mem[0] = 1
                    staticcall stor1[idx].field_512.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor1[idx].field_0 < stor1[idx].field_256:
                        _656 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _664 = mem[_656]
                        require mem[_656] == mem[_656 + 18 len 14]
                        _672 = mem[_656 + 32]
                        require mem[_656 + 32] == mem[_656 + 50 len 14]
                        require mem[_656 + 64] == mem[_656 + 92 len 4]
                        if stor1[idx].field_0 == stor1[idx].field_0:
                            if not 1000 * mem[_656 + 18 len 14]:
                                revert with 0, 18
                            if stor1[idx].field_0 == stor1[idx].field_0:
                                _694 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_694 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_694 + 36] = 0
                                mem[_694 + 68] = 0 / 1000 * Mask(112, 0, _664)
                                mem[_694 + 100] = stor1[idx].field_768
                                mem[_694 + 132] = 128
                                mem[_694 + 164] = mem[_694]
                                t = 0
                                while t < mem[_694]:
                                    mem[t + _694 + 196] = mem[t + _694 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_694]) > mem[_694]:
                                    mem[mem[_694] + _694 + 196] = 0
                                require ext_code.size(stor1[idx].field_512)
                                call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 1000 * Mask(112, 0, _664), stor1[idx].field_768, 128, mem[_694], mem[_694 + 196 len ceil32(mem[_694])]
                            else:
                                _695 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_695 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_695 + 36] = 0 / 1000 * Mask(112, 0, _664)
                                mem[_695 + 68] = 0
                                mem[_695 + 100] = stor1[idx].field_768
                                mem[_695 + 132] = 128
                                mem[_695 + 164] = mem[_695]
                                t = 0
                                while t < mem[_695]:
                                    mem[t + _695 + 196] = mem[t + _695 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_695]) > mem[_695]:
                                    mem[mem[_695] + _695 + 196] = 0
                                require ext_code.size(stor1[idx].field_512)
                                call stor1[idx].field_512.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(mem[_695]) + _695 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s >= 32:
                                revert with 0, 50
                            if this.address == stor1[idx].field_768:
                                s = Mask(8, 248, stor1[idx].field_0)
                                s = s
                                idx = idx + 4
                                t = 0 / 1000 * Mask(112, 0, _664)
                                continue 
                            if s + 1 >= 32:
                                revert with 0, 50
                            mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _664)
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s + 1
                            idx = idx + 4
                            t = 0 / 1000 * Mask(112, 0, _664)
                            continue 
                        if not 1000 * mem[_656 + 50 len 14]:
                            revert with 0, 18
                        if stor1[idx].field_0 == stor1[idx].field_0:
                            _696 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_696 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_696 + 36] = 0
                            mem[_696 + 68] = 0 / 1000 * Mask(112, 0, _672)
                            mem[_696 + 100] = stor1[idx].field_768
                            mem[_696 + 132] = 128
                            mem[_696 + 164] = mem[_696]
                            t = 0
                            while t < mem[_696]:
                                mem[t + _696 + 196] = mem[t + _696 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_696]) > mem[_696]:
                                mem[mem[_696] + _696 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(mem[_696]) + _696 + -mem[64] + 192]
                        else:
                            _697 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_697 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_697 + 36] = 0 / 1000 * Mask(112, 0, _672)
                            mem[_697 + 68] = 0
                            mem[_697 + 100] = stor1[idx].field_768
                            mem[_697 + 132] = 128
                            mem[_697 + 164] = mem[_697]
                            t = 0
                            while t < mem[_697]:
                                mem[t + _697 + 196] = mem[t + _697 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_697]) > mem[_697]:
                                mem[mem[_697] + _697 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(mem[_697]) + _697 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s >= 32:
                            revert with 0, 50
                        if this.address == stor1[idx].field_768:
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s
                            idx = idx + 4
                            t = 0 / 1000 * Mask(112, 0, _672)
                            continue 
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _672)
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _672)
                        continue 
                    _657 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _665 = mem[_657]
                    require mem[_657] == mem[_657 + 18 len 14]
                    _673 = mem[_657 + 32]
                    require mem[_657 + 32] == mem[_657 + 50 len 14]
                    require mem[_657 + 64] == mem[_657 + 92 len 4]
                    if stor1[idx].field_0 == stor1[idx].field_256:
                        if not 1000 * mem[_657 + 18 len 14]:
                            revert with 0, 18
                        if stor1[idx].field_0 == stor1[idx].field_256:
                            _698 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_698 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_698 + 36] = 0
                            mem[_698 + 68] = 0 / 1000 * Mask(112, 0, _665)
                            mem[_698 + 100] = stor1[idx].field_768
                            mem[_698 + 132] = 128
                            mem[_698 + 164] = mem[_698]
                            t = 0
                            while t < mem[_698]:
                                mem[t + _698 + 196] = mem[t + _698 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_698]) > mem[_698]:
                                mem[mem[_698] + _698 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 1000 * Mask(112, 0, _665), stor1[idx].field_768, 128, mem[_698], mem[_698 + 196 len ceil32(mem[_698])]
                        else:
                            _699 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_699 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_699 + 36] = 0 / 1000 * Mask(112, 0, _665)
                            mem[_699 + 68] = 0
                            mem[_699 + 100] = stor1[idx].field_768
                            mem[_699 + 132] = 128
                            mem[_699 + 164] = mem[_699]
                            t = 0
                            while t < mem[_699]:
                                mem[t + _699 + 196] = mem[t + _699 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_699]) > mem[_699]:
                                mem[mem[_699] + _699 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / 1000 * Mask(112, 0, _665), 0, stor1[idx].field_768, 128, mem[_699], mem[_699 + 196 len ceil32(mem[_699])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s >= 32:
                            revert with 0, 50
                        if this.address == stor1[idx].field_768:
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s
                            idx = idx + 4
                            t = 0 / 1000 * Mask(112, 0, _665)
                            continue 
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _665)
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _665)
                        continue 
                    if not 1000 * mem[_657 + 50 len 14]:
                        revert with 0, 18
                    if stor1[idx].field_0 == stor1[idx].field_256:
                        _700 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_700 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_700 + 36] = 0
                        mem[_700 + 68] = 0 / 1000 * Mask(112, 0, _673)
                        mem[_700 + 100] = stor1[idx].field_768
                        mem[_700 + 132] = 128
                        mem[_700 + 164] = mem[_700]
                        t = 0
                        while t < mem[_700]:
                            mem[t + _700 + 196] = mem[t + _700 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_700]) > mem[_700]:
                            mem[mem[_700] + _700 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 1000 * Mask(112, 0, _673), stor1[idx].field_768, 128, mem[_700], mem[_700 + 196 len ceil32(mem[_700])]
                    else:
                        _701 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_701 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_701 + 36] = 0 / 1000 * Mask(112, 0, _673)
                        mem[_701 + 68] = 0
                        mem[_701 + 100] = stor1[idx].field_768
                        mem[_701 + 132] = 128
                        mem[_701 + 164] = mem[_701]
                        t = 0
                        while t < mem[_701]:
                            mem[t + _701 + 196] = mem[t + _701 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_701]) > mem[_701]:
                            mem[mem[_701] + _701 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_701]) + _701 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s >= 32:
                        revert with 0, 50
                    if this.address == stor1[idx].field_768:
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _673)
                        continue 
                    if s + 1 >= 32:
                        revert with 0, 50
                    mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _673)
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s + 1
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _673)
                    continue 
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = arg4
                mem[mem[64] + 68] = 1
                staticcall address(ext_call.return_data[0]).toAmount(address arg1, uint256 arg2, bool arg3) with:
                        gas gas_remaining wei
                       args address(arg2), arg4, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _492 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _502 = mem[_492]
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = _502
                call arg2.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _502
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _534 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_534] == bool(mem[_534])
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = arg4
                call address(ext_call.return_data[0]).deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args address(arg2), address(ext_call.return_data[0]), this.address, 0, arg4
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                mem[mem[64] + 4] = this.address
                staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _616 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                stor2 = mem[_616]
        else:
            mem[(4 * ceil32(return_data.size)) + 1124] = arg1
            mem[(4 * ceil32(return_data.size)) + 1156] = ext_call.return_data[0]
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 1120] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'pair'
            call arg1.burn(address arg1) with:
                 gas gas_remaining wei
                args this.address
            mem[(6 * ceil32(return_data.size)) + 1120 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 1120
            require return_data.size >= 64
            mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            s = Mask(8, 248, uint256(stor1.field_0))
            s = 1
            idx = 1
            t = ext_call.return_data[0]
            while idx < stor1.length:
                mem[0] = 1
                if Mask(8, 248, stor1[idx].field_0):
                    if Mask(8, 248, stor1[idx].field_0) == 0x500000000000000000000000000000000000000000000000000000000000000:
                        mem[mem[64] + 4] = this.address
                        staticcall stor1[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _525 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = mem[_525]
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 1
                        t = t
                        continue 
                    if Mask(8, 248, stor1[idx].field_0) != 0x600000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'op'
                    if s >= 32:
                        revert with 0, 50
                    if idx + 1 >= stor1.length:
                        revert with 0, 50
                    mem[0] = 1
                    mem[mem[64] + 4] = stor1[idx].field_256
                    mem[mem[64] + 36] = 0
                    call stor1[idx].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1[idx].field_256, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _576 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_576] == bool(mem[_576])
                    if not mem[_576]:
                        revert with 0, 'xfer'
                    if s >= 32:
                        revert with 0, 50
                    if s + 1 >= 32:
                        revert with 0, 50
                    mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s + 1
                    idx = idx + 2
                    t = 0
                    continue 
                if s >= 32:
                    revert with 0, 50
                if idx + 3 >= stor1.length:
                    revert with 0, 50
                if idx + 1 >= stor1.length:
                    revert with 0, 50
                if idx + 2 >= stor1.length:
                    revert with 0, 50
                mem[0] = 1
                staticcall stor1[idx].field_512.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor1[idx].field_0 < stor1[idx].field_256:
                    _658 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _666 = mem[_658]
                    require mem[_658] == mem[_658 + 18 len 14]
                    _674 = mem[_658 + 32]
                    require mem[_658 + 32] == mem[_658 + 50 len 14]
                    require mem[_658 + 64] == mem[_658 + 92 len 4]
                    if stor1[idx].field_0 == stor1[idx].field_0:
                        if not 1000 * mem[_658 + 18 len 14]:
                            revert with 0, 18
                        if stor1[idx].field_0 == stor1[idx].field_0:
                            _702 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_702 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_702 + 36] = 0
                            mem[_702 + 68] = 0 / 1000 * Mask(112, 0, _666)
                            mem[_702 + 100] = stor1[idx].field_768
                            mem[_702 + 132] = 128
                            mem[_702 + 164] = mem[_702]
                            t = 0
                            while t < mem[_702]:
                                mem[t + _702 + 196] = mem[t + _702 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_702]) > mem[_702]:
                                mem[mem[_702] + _702 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 1000 * Mask(112, 0, _666), stor1[idx].field_768, 128, mem[_702], mem[_702 + 196 len ceil32(mem[_702])]
                        else:
                            _703 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_703 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_703 + 36] = 0 / 1000 * Mask(112, 0, _666)
                            mem[_703 + 68] = 0
                            mem[_703 + 100] = stor1[idx].field_768
                            mem[_703 + 132] = 128
                            mem[_703 + 164] = mem[_703]
                            t = 0
                            while t < mem[_703]:
                                mem[t + _703 + 196] = mem[t + _703 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_703]) > mem[_703]:
                                mem[mem[_703] + _703 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / 1000 * Mask(112, 0, _666), 0, stor1[idx].field_768, 128, mem[_703], mem[_703 + 196 len ceil32(mem[_703])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s >= 32:
                            revert with 0, 50
                        if this.address == stor1[idx].field_768:
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s
                            idx = idx + 4
                            t = 0 / 1000 * Mask(112, 0, _666)
                            continue 
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _666)
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _666)
                        continue 
                    if not 1000 * mem[_658 + 50 len 14]:
                        revert with 0, 18
                    if stor1[idx].field_0 == stor1[idx].field_0:
                        _704 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_704 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_704 + 36] = 0
                        mem[_704 + 68] = 0 / 1000 * Mask(112, 0, _674)
                        mem[_704 + 100] = stor1[idx].field_768
                        mem[_704 + 132] = 128
                        mem[_704 + 164] = mem[_704]
                        t = 0
                        while t < mem[_704]:
                            mem[t + _704 + 196] = mem[t + _704 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_704]) > mem[_704]:
                            mem[mem[_704] + _704 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_704]) + _704 + -mem[64] + 192]
                    else:
                        _705 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_705 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_705 + 36] = 0 / 1000 * Mask(112, 0, _674)
                        mem[_705 + 68] = 0
                        mem[_705 + 100] = stor1[idx].field_768
                        mem[_705 + 132] = 128
                        mem[_705 + 164] = mem[_705]
                        t = 0
                        while t < mem[_705]:
                            mem[t + _705 + 196] = mem[t + _705 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_705]) > mem[_705]:
                            mem[mem[_705] + _705 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_705]) + _705 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s >= 32:
                        revert with 0, 50
                    if this.address == stor1[idx].field_768:
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _674)
                        continue 
                    if s + 1 >= 32:
                        revert with 0, 50
                    mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _674)
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s + 1
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _674)
                    continue 
                _659 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _667 = mem[_659]
                require mem[_659] == mem[_659 + 18 len 14]
                _675 = mem[_659 + 32]
                require mem[_659 + 32] == mem[_659 + 50 len 14]
                require mem[_659 + 64] == mem[_659 + 92 len 4]
                if stor1[idx].field_0 == stor1[idx].field_256:
                    if not 1000 * mem[_659 + 18 len 14]:
                        revert with 0, 18
                    if stor1[idx].field_0 == stor1[idx].field_256:
                        _706 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_706 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_706 + 36] = 0
                        mem[_706 + 68] = 0 / 1000 * Mask(112, 0, _667)
                        mem[_706 + 100] = stor1[idx].field_768
                        mem[_706 + 132] = 128
                        mem[_706 + 164] = mem[_706]
                        t = 0
                        while t < mem[_706]:
                            mem[t + _706 + 196] = mem[t + _706 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_706]) > mem[_706]:
                            mem[mem[_706] + _706 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 1000 * Mask(112, 0, _667), stor1[idx].field_768, 128, mem[_706], mem[_706 + 196 len ceil32(mem[_706])]
                    else:
                        _707 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_707 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_707 + 36] = 0 / 1000 * Mask(112, 0, _667)
                        mem[_707 + 68] = 0
                        mem[_707 + 100] = stor1[idx].field_768
                        mem[_707 + 132] = 128
                        mem[_707 + 164] = mem[_707]
                        t = 0
                        while t < mem[_707]:
                            mem[t + _707 + 196] = mem[t + _707 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_707]) > mem[_707]:
                            mem[mem[_707] + _707 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / 1000 * Mask(112, 0, _667), 0, stor1[idx].field_768, 128, mem[_707], mem[_707 + 196 len ceil32(mem[_707])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s >= 32:
                        revert with 0, 50
                    if this.address == stor1[idx].field_768:
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _667)
                        continue 
                    if s + 1 >= 32:
                        revert with 0, 50
                    mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _667)
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s + 1
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _667)
                    continue 
                if not 1000 * mem[_659 + 50 len 14]:
                    revert with 0, 18
                if stor1[idx].field_0 == stor1[idx].field_256:
                    _708 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_708 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_708 + 36] = 0
                    mem[_708 + 68] = 0 / 1000 * Mask(112, 0, _675)
                    mem[_708 + 100] = stor1[idx].field_768
                    mem[_708 + 132] = 128
                    mem[_708 + 164] = mem[_708]
                    t = 0
                    while t < mem[_708]:
                        mem[t + _708 + 196] = mem[t + _708 + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_708]) > mem[_708]:
                        mem[mem[_708] + _708 + 196] = 0
                    require ext_code.size(stor1[idx].field_512)
                    call stor1[idx].field_512.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_708]) + _708 + -mem[64] + 192]
                else:
                    _709 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_709 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_709 + 36] = 0 / 1000 * Mask(112, 0, _675)
                    mem[_709 + 68] = 0
                    mem[_709 + 100] = stor1[idx].field_768
                    mem[_709 + 132] = 128
                    mem[_709 + 164] = mem[_709]
                    t = 0
                    while t < mem[_709]:
                        mem[t + _709 + 196] = mem[t + _709 + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_709]) > mem[_709]:
                        mem[mem[_709] + _709 + 196] = 0
                    require ext_code.size(stor1[idx].field_512)
                    call stor1[idx].field_512.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_709]) + _709 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if s >= 32:
                    revert with 0, 50
                if this.address == stor1[idx].field_768:
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _675)
                    continue 
                if s + 1 >= 32:
                    revert with 0, 50
                mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 96] = 0 / 1000 * Mask(112, 0, _675)
                s = Mask(8, 248, stor1[idx].field_0)
                s = s + 1
                idx = idx + 4
                t = 0 / 1000 * Mask(112, 0, _675)
                continue 
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = arg4
            mem[mem[64] + 68] = 1
            staticcall address(ext_call.return_data[0]).toAmount(address arg1, uint256 arg2, bool arg3) with:
                    gas gas_remaining wei
                   args address(arg2), arg4, 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _494 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _506 = mem[_494]
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = _506
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _506
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _538 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_538] == bool(mem[_538])
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = arg4
            call address(ext_call.return_data[0]).deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args address(arg2), address(ext_call.return_data[0]), this.address, 0, arg4
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            mem[mem[64] + 4] = this.address
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _618 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            stor2 = mem[_618]
    return 0
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0xbeae6637(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x520b9a0d(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x26b7256f(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != withdraw(uint256 arg1, address arg2):
                    require unknown_0x1ab2b74b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[36] == address(cd[36])
                if owner != msg.sender:
                    revert with 0, 'Only the owner can call this'
                call address(cd[36]) with:
                   value cd[4] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if unknown_0x26b7256f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                if owner != msg.sender:
                    revert with 0, 'Only the owner can call this'
                require ext_code.size(address(cd[4]))
                call address(cd[4]).withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call address(cd[36]) with:
                   value cd[68] wei
                     gas 2300 * is_zero(value) wei
            if unknown_0x39f47693(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Only the owner can call this'
                require ext_code.size(address(cd[4]))
                call address(cd[4]).withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require unknown_0x4622be90(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 192
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require cd[68] == address(cd[68])
            require cd[100] == address(cd[100])
            if not stor3[msg.sender]:
                revert with 0, 'cauldron'
            revert with 0, 'exact'
        if unknown_0x864a8efa(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x864a8efa(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            require unknown_0xa6f9dae1(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Only the owner can call this'
            owner = address(cd[4])
        if unknown_0x520b9a0d(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            require ('cd', 4).length <= test266151307()
            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
            if owner != msg.sender:
                revert with 0, 'Only the owner can call this'
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                stor3[address(cd[((32 * idx) + cd[4] + 36)])] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        require unknown_0x5506dffe(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 128
        require cd[4] == address(cd[4])
        require cd[36] <= test266151307()
        require cd[36] + 35 < calldata.size
        require ('cd', 36).length <= test266151307()
        require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
        require cd[68] <= test266151307()
        require cd[68] + 35 < calldata.size
        require ('cd', 68).length <= test266151307()
        require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
        mem[132] = this.address
        staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[32] = 3
        if not stor3[address(cd[4])]:
            revert with 0, 'cauldron'
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 128] = ('cd', 36).length
        mem[64] = ceil32(return_data.size) + (32 * ('cd', 36).length) + 160
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 160] = -1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            stor1.length = ('cd', 68).length
            mem[0] = 1
            if not ('cd', 68).length:
                idx = 0
                while stor1.length > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 160] = 0x912860c500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 164] = 128
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 292] = ('cd', 36).length
                idx = 0
                s = ceil32(return_data.size) + (32 * ('cd', 36).length) + 324
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 196] = (32 * ('cd', 36).length) + 160
                mem[ceil32(return_data.size) + (64 * ('cd', 36).length) + 324] = ('cd', 36).length
                s = 0
                s = ceil32(return_data.size) + (64 * ('cd', 36).length) + 356
                s = ceil32(return_data.size) + 160
                while ('cd', 36).length < ('cd', 36).length:
                    mem[cd[36] + (32 * ('cd', 36).length) + 36] = mem[s]
                    s = ('cd', 36).length + 1
                    s = cd[36] + (32 * ('cd', 36).length) + 68
                    s = s + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 228] = this.address
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 260] = this.address
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[36] + (32 * ('cd', 36).length) + -mem[64] + 32]
                stor2 = 0
                idx = 0
                while idx < stor1.length:
                    mem[0] = 1
                    stor1[idx].field_0 = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                stor1.length = 0
                mem[0] = 1
                idx = 0
                while stor1.length > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    _2228 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !cd[100]:
                        revert with 0, 17
                    if ext_call.return_data[0] + cd[100] > mem[_2228]:
                        revert with 0, 'profit'
                    else:
                        return 0
                _2229 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if ext_call.return_data[0] > !cd[100]:
                    revert with 0, 17
                if ext_call.return_data[0] + cd[100] > mem[_2229]:
                    revert with 0, 'profit'
            else:
                s = 0
                idx = cd[68] + 36
                while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
                    stor1[s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                while stor1.length > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 160] = 0x912860c500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 164] = 128
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 292] = ('cd', 36).length
                idx = 0
                s = ceil32(return_data.size) + (32 * ('cd', 36).length) + 324
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 196] = (32 * ('cd', 36).length) + 160
                mem[ceil32(return_data.size) + (64 * ('cd', 36).length) + 324] = ('cd', 36).length
                s = 0
                s = ceil32(return_data.size) + (64 * ('cd', 36).length) + 356
                s = ceil32(return_data.size) + 160
                while ('cd', 36).length < ('cd', 36).length:
                    mem[cd[36] + (32 * ('cd', 36).length) + 36] = mem[s]
                    s = ('cd', 36).length + 1
                    s = cd[36] + (32 * ('cd', 36).length) + 68
                    s = s + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 228] = this.address
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 260] = this.address
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[36] + (32 * ('cd', 36).length) + -mem[64] + 32]
                stor2 = 0
                idx = 0
                while idx < stor1.length:
                    mem[0] = 1
                    stor1[idx].field_0 = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                stor1.length = 0
                mem[0] = 1
                idx = 0
                while stor1.length > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    _2292 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !cd[100]:
                        revert with 0, 17
                    if ext_call.return_data[0] + cd[100] > mem[_2292]:
                        revert with 0, 'profit'
                    else:
                        return 0
                _2293 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if ext_call.return_data[0] > !cd[100]:
                    revert with 0, 17
                if ext_call.return_data[0] + cd[100] > mem[_2293]:
                    revert with 0, 'profit'
        else:
            mem[ceil32(return_data.size) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 160] = -1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            stor1.length = ('cd', 68).length
            mem[0] = 1
            if not ('cd', 68).length:
                idx = 0
                while stor1.length > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 160] = 0x912860c500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 164] = 128
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 292] = ('cd', 36).length
                idx = 0
                s = ceil32(return_data.size) + (32 * ('cd', 36).length) + 324
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 196] = (32 * ('cd', 36).length) + 160
                mem[ceil32(return_data.size) + (64 * ('cd', 36).length) + 324] = ('cd', 36).length
                s = 0
                s = ceil32(return_data.size) + (64 * ('cd', 36).length) + 356
                s = ceil32(return_data.size) + 160
                while ('cd', 36).length < ('cd', 36).length:
                    mem[cd[36] + (32 * ('cd', 36).length) + 36] = mem[s]
                    s = ('cd', 36).length + 1
                    s = cd[36] + (32 * ('cd', 36).length) + 68
                    s = s + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 228] = this.address
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 260] = this.address
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[36] + (32 * ('cd', 36).length) + -mem[64] + 32]
                stor2 = 0
                idx = 0
                while idx < stor1.length:
                    mem[0] = 1
                    stor1[idx].field_0 = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                stor1.length = 0
                mem[0] = 1
                idx = 0
                while stor1.length > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    _2230 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !cd[100]:
                        revert with 0, 17
                    if ext_call.return_data[0] + cd[100] > mem[_2230]:
                        revert with 0, 'profit'
                    else:
                        return 0
                _2231 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if ext_call.return_data[0] > !cd[100]:
                    revert with 0, 17
                if ext_call.return_data[0] + cd[100] > mem[_2231]:
                    revert with 0, 'profit'
            else:
                s = 0
                idx = cd[68] + 36
                while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
                    stor1[s].field_0 = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                while stor1.length > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 160] = 0x912860c500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 164] = 128
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 292] = ('cd', 36).length
                idx = 0
                s = ceil32(return_data.size) + (32 * ('cd', 36).length) + 324
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 196] = (32 * ('cd', 36).length) + 160
                mem[ceil32(return_data.size) + (64 * ('cd', 36).length) + 324] = ('cd', 36).length
                s = 0
                s = ceil32(return_data.size) + (64 * ('cd', 36).length) + 356
                s = ceil32(return_data.size) + 160
                while ('cd', 36).length < ('cd', 36).length:
                    mem[cd[36] + (32 * ('cd', 36).length) + 36] = mem[s]
                    s = ('cd', 36).length + 1
                    s = cd[36] + (32 * ('cd', 36).length) + 68
                    s = s + 32
                    continue 
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 228] = this.address
                mem[ceil32(return_data.size) + (32 * ('cd', 36).length) + 260] = this.address
                require ext_code.size(address(cd[4]))
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[36] + (32 * ('cd', 36).length) + -mem[64] + 32]
                stor2 = 0
                idx = 0
                while idx < stor1.length:
                    mem[0] = 1
                    stor1[idx].field_0 = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                stor1.length = 0
                mem[0] = 1
                idx = 0
                while stor1.length > idx:
                    stor1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    _2294 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !cd[100]:
                        revert with 0, 17
                    if ext_call.return_data[0] + cd[100] > mem[_2294]:
                        revert with 0, 'profit'
                    else:
                        return 0
                _2295 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if ext_call.return_data[0] > !cd[100]:
                    revert with 0, 17
                if ext_call.return_data[0] + cd[100] > mem[_2295]:
                    revert with 0, 'profit'
        return stor2
    if unknown_0xda3e3397(?????) > uint32(call.func_hash) >> 224:
        if unknown_0xc7eaef1e(?????) > uint32(call.func_hash) >> 224:
            if unknown_0xbeae6637(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
            require unknown_0xbf376c7a(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Only the owner can call this'
            require ext_code.size(address(cd[4]))
            call address(cd[4]).deposit() with:
               value cd[36] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0xc7eaef1e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 0x136acd46c134e8269052c62a67042d6bdedde3c9
            if uint32(call.func_hash) >> 224 != unknown_0xce5393a8(?????):
                require unknown_0xd0af596c(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return bool(stor3[cd[4]])
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            require ('cd', 4).length <= test266151307()
            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
            if owner != msg.sender:
                revert with 0, 'Only the owner can call this'
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                stor3[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    if unknown_0xe343fe12(?????) > uint32(call.func_hash) >> 224:
        if uint32(call.func_hash) >> 224 != unknown_0xda3e3397(?????):
            require unknown_0xdaec383d(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return 0x130966628846bfd36ff31a822705796e8cb8c18d
        require not msg.value
        require calldata.size - 4 >= 96
        require cd[4] == address(cd[4])
        require cd[36] == address(cd[36])
        if owner != msg.sender:
            revert with 0, 'Only the owner can call this'
        if not cd[68]:
            mem[164] = address(cd[36])
            mem[196] = cd[68]
            mem[128] = 68
            mem[164 len 28] = address(cd[36]) << 64
            mem[160 len 4] = approve(address arg1, uint256 arg2)
            mem[228] = 32
            mem[260] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = approve(address arg1, uint256 arg2), address(cd[36]) << 64, 0, cd[68], 0
            mem[360] = 0
            call address(cd[4]) with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), address(cd[36]) << 64, 0, cd[68], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), address(cd[36]) << 64, 0, cd[68], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                require not mem[96]
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[324] == bool(mem[324])
                if not mem[324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[132] = this.address
            mem[164] = address(cd[36])
            staticcall address(cd[4]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(cd[36])
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[ceil32(return_data.size) + 164] = address(cd[36])
            mem[ceil32(return_data.size) + 196] = cd[68]
            mem[ceil32(return_data.size) + 128] = 68
            mem[ceil32(return_data.size) + 164 len 28] = address(cd[36]) << 64
            mem[ceil32(return_data.size) + 160 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 96] = approve(address arg1, uint256 arg2), address(cd[36]) << 64, 0, cd[68], 0
            mem[ceil32(return_data.size) + 360] = 0
            call address(cd[4]) with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), address(cd[36]) << 64, 0, cd[68], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), address(cd[36]) << 64, 0, cd[68], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if uint32(call.func_hash) >> 224 != unknown_0xe343fe12(?????):
        if uint32(call.func_hash) >> 224 != unknown_0xe5994905(?????):
            require unknown_0xf5537ede(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            if owner != msg.sender:
                revert with 0, 'Only the owner can call this'
            mem[164] = address(cd[36])
            mem[196] = cd[68]
            mem[128] = 68
            mem[164 len 28] = address(cd[36]) << 64
            mem[160 len 4] = unknown_0xa9059cbb(?????)
            mem[228] = 32
            mem[260] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, cd[68], 0
            mem[360] = 0
            call address(cd[4]) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, cd[68], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, cd[68], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                require not mem[96]
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[324] == bool(mem[324])
                if not mem[324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require not msg.value
            require calldata.size - 4 >= 128
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require cd[68] == address(cd[68])
            if owner != msg.sender:
                revert with 0, 'Only the owner can call this'
            mem[164] = address(cd[36])
            mem[196] = address(cd[68])
            mem[228] = cd[100]
            mem[128] = 100
            mem[164 len 28] = address(cd[36]) << 64
            mem[160 len 4] = unknown_0x23b872dd(?????)
            mem[260] = 32
            mem[292] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 128] = unknown_0x23b872dd(?????), address(cd[36]) << 64, 0, address(cd[68]), cd[100], 0
            mem[424] = 0
            call address(cd[4]) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), address(cd[36]) << 64, 0, address(cd[68]), cd[100], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), address(cd[36]) << 64, 0, address(cd[68]), cd[100], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                require not mem[96]
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[356] == bool(mem[356])
                if not mem[356]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require not msg.value
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    mem[32] = 3
    if not stor3[msg.sender]:
        revert with 0, 'cauldron'
    call msg.sender.bentoBox() with:
         gas gas_remaining wei
    mem[128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 132] = msg.sender
    staticcall address(ext_call.return_data[0]).masterContractOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'master'
    mem[(2 * ceil32(return_data.size)) + 292] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMasterContractApproval(address arg1, address arg2, bool arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args this.address, address(ext_call.return_data[0]), 1, 0, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = cd[132]
    call address(ext_call.return_data[0]).withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args address(cd[4]), this.address, this.address, 0, cd[132]
    mem[(2 * ceil32(return_data.size)) + 128 len 64] = ext_call.return_data[0 len 64]
    require return_data.size >= 64
    mem[64] = (4 * ceil32(return_data.size)) + 1152
    mem[(4 * ceil32(return_data.size)) + 128 len 1024] = call.data[calldata.size len 1024]
    if 0 >= stor1.length:
        revert with 0, 50
    mem[0] = 1
    if Mask(8, 248, uint256(stor1.field_0)) == 0x200000000000000000000000000000000000000000000000000000000000000:
        mem[(4 * ceil32(return_data.size)) + 1156] = ext_call.return_data[0]
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.unwrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 1152
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 1152] = 0x9ebea88c00000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 1156] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 1188] = 0
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        s = Mask(8, 248, uint256(stor1.field_0))
        s = 0
        idx = 1
        t = ext_call.return_data[0]
        while idx < stor1.length:
            mem[0] = 1
            if Mask(8, 248, stor1[idx].field_0):
                if Mask(8, 248, stor1[idx].field_0) == 0x500000000000000000000000000000000000000000000000000000000000000:
                    mem[mem[64] + 4] = this.address
                    staticcall stor1[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _969 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s + 1 >= 32:
                        revert with 0, 50
                    mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = mem[_969]
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s + 1
                    idx = idx + 1
                    t = t
                    continue 
                if Mask(8, 248, stor1[idx].field_0) != 0x600000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'op'
                if s >= 32:
                    revert with 0, 50
                if idx + 1 >= stor1.length:
                    revert with 0, 50
                mem[0] = 1
                mem[mem[64] + 4] = stor1[idx].field_256
                mem[mem[64] + 36] = 0
                call stor1[idx].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1[idx].field_256, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1087 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1087] == bool(mem[_1087])
                if not mem[_1087]:
                    revert with 0, 'xfer'
                if s >= 32:
                    revert with 0, 50
                if s + 1 >= 32:
                    revert with 0, 50
                mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0
                s = Mask(8, 248, stor1[idx].field_0)
                s = s + 1
                idx = idx + 2
                t = 0
                continue 
            if s >= 32:
                revert with 0, 50
            if idx + 3 >= stor1.length:
                revert with 0, 50
            if idx + 1 >= stor1.length:
                revert with 0, 50
            if idx + 2 >= stor1.length:
                revert with 0, 50
            mem[0] = 1
            staticcall stor1[idx].field_512.getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor1[idx].field_0 < stor1[idx].field_256:
                _1310 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1330 = mem[_1310]
                require mem[_1310] == mem[_1310 + 18 len 14]
                _1346 = mem[_1310 + 32]
                require mem[_1310 + 32] == mem[_1310 + 50 len 14]
                require mem[_1310 + 64] == mem[_1310 + 92 len 4]
                if stor1[idx].field_0 == stor1[idx].field_0:
                    if not 1000 * mem[_1310 + 18 len 14]:
                        revert with 0, 18
                    if stor1[idx].field_0 == stor1[idx].field_0:
                        _1438 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1438 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1438 + 36] = 0
                        mem[_1438 + 68] = 0 / 1000 * Mask(112, 0, _1330)
                        mem[_1438 + 100] = stor1[idx].field_768
                        mem[_1438 + 132] = 128
                        mem[_1438 + 164] = mem[_1438]
                        t = 0
                        while t < mem[_1438]:
                            mem[t + _1438 + 196] = mem[t + _1438 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1438]) > mem[_1438]:
                            mem[mem[_1438] + _1438 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 1000 * Mask(112, 0, _1330), stor1[idx].field_768, 128, mem[_1438], mem[_1438 + 196 len ceil32(mem[_1438])]
                    else:
                        _1439 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1439 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1439 + 36] = 0 / 1000 * Mask(112, 0, _1330)
                        mem[_1439 + 68] = 0
                        mem[_1439 + 100] = stor1[idx].field_768
                        mem[_1439 + 132] = 128
                        mem[_1439 + 164] = mem[_1439]
                        t = 0
                        while t < mem[_1439]:
                            mem[t + _1439 + 196] = mem[t + _1439 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1439]) > mem[_1439]:
                            mem[mem[_1439] + _1439 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / 1000 * Mask(112, 0, _1330), 0, stor1[idx].field_768, 128, mem[_1439], mem[_1439 + 196 len ceil32(mem[_1439])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s >= 32:
                        revert with 0, 50
                    if this.address == stor1[idx].field_768:
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _1330)
                        continue 
                    if s + 1 >= 32:
                        revert with 0, 50
                    mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1330)
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s + 1
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _1330)
                    continue 
                if not 1000 * mem[_1310 + 50 len 14]:
                    revert with 0, 18
                if stor1[idx].field_0 == stor1[idx].field_0:
                    _1440 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_1440 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1440 + 36] = 0
                    mem[_1440 + 68] = 0 / 1000 * Mask(112, 0, _1346)
                    mem[_1440 + 100] = stor1[idx].field_768
                    mem[_1440 + 132] = 128
                    mem[_1440 + 164] = mem[_1440]
                    t = 0
                    while t < mem[_1440]:
                        mem[t + _1440 + 196] = mem[t + _1440 + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_1440]) > mem[_1440]:
                        mem[mem[_1440] + _1440 + 196] = 0
                    require ext_code.size(stor1[idx].field_512)
                    call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / 1000 * Mask(112, 0, _1346), stor1[idx].field_768, 128, mem[_1440], mem[_1440 + 196 len ceil32(mem[_1440])]
                else:
                    _1441 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_1441 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1441 + 36] = 0 / 1000 * Mask(112, 0, _1346)
                    mem[_1441 + 68] = 0
                    mem[_1441 + 100] = stor1[idx].field_768
                    mem[_1441 + 132] = 128
                    mem[_1441 + 164] = mem[_1441]
                    t = 0
                    while t < mem[_1441]:
                        mem[t + _1441 + 196] = mem[t + _1441 + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_1441]) > mem[_1441]:
                        mem[mem[_1441] + _1441 + 196] = 0
                    require ext_code.size(stor1[idx].field_512)
                    call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / 1000 * Mask(112, 0, _1346), 0, stor1[idx].field_768, 128, mem[_1441], mem[_1441 + 196 len ceil32(mem[_1441])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if s >= 32:
                    revert with 0, 50
                if this.address == stor1[idx].field_768:
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _1346)
                    continue 
                if s + 1 >= 32:
                    revert with 0, 50
                mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1346)
                s = Mask(8, 248, stor1[idx].field_0)
                s = s + 1
                idx = idx + 4
                t = 0 / 1000 * Mask(112, 0, _1346)
                continue 
            _1311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1331 = mem[_1311]
            require mem[_1311] == mem[_1311 + 18 len 14]
            _1347 = mem[_1311 + 32]
            require mem[_1311 + 32] == mem[_1311 + 50 len 14]
            require mem[_1311 + 64] == mem[_1311 + 92 len 4]
            if stor1[idx].field_0 == stor1[idx].field_256:
                if not 1000 * mem[_1311 + 18 len 14]:
                    revert with 0, 18
                if stor1[idx].field_0 == stor1[idx].field_256:
                    _1442 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_1442 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1442 + 36] = 0
                    mem[_1442 + 68] = 0 / 1000 * Mask(112, 0, _1331)
                    mem[_1442 + 100] = stor1[idx].field_768
                    mem[_1442 + 132] = 128
                    mem[_1442 + 164] = mem[_1442]
                    t = 0
                    while t < mem[_1442]:
                        mem[t + _1442 + 196] = mem[t + _1442 + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_1442]) > mem[_1442]:
                        mem[mem[_1442] + _1442 + 196] = 0
                    require ext_code.size(stor1[idx].field_512)
                    call stor1[idx].field_512.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_1442]) + _1442 + -mem[64] + 192]
                else:
                    _1443 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_1443 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1443 + 36] = 0 / 1000 * Mask(112, 0, _1331)
                    mem[_1443 + 68] = 0
                    mem[_1443 + 100] = stor1[idx].field_768
                    mem[_1443 + 132] = 128
                    mem[_1443 + 164] = mem[_1443]
                    t = 0
                    while t < mem[_1443]:
                        mem[t + _1443 + 196] = mem[t + _1443 + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_1443]) > mem[_1443]:
                        mem[mem[_1443] + _1443 + 196] = 0
                    require ext_code.size(stor1[idx].field_512)
                    call stor1[idx].field_512.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_1443]) + _1443 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if s >= 32:
                    revert with 0, 50
                if this.address == stor1[idx].field_768:
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _1331)
                    continue 
                if s + 1 >= 32:
                    revert with 0, 50
                mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1331)
                s = Mask(8, 248, stor1[idx].field_0)
                s = s + 1
                idx = idx + 4
                t = 0 / 1000 * Mask(112, 0, _1331)
                continue 
            if not 1000 * mem[_1311 + 50 len 14]:
                revert with 0, 18
            if stor1[idx].field_0 == stor1[idx].field_256:
                _1444 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_1444 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_1444 + 36] = 0
                mem[_1444 + 68] = 0 / 1000 * Mask(112, 0, _1347)
                mem[_1444 + 100] = stor1[idx].field_768
                mem[_1444 + 132] = 128
                mem[_1444 + 164] = mem[_1444]
                t = 0
                while t < mem[_1444]:
                    mem[t + _1444 + 196] = mem[t + _1444 + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_1444]) > mem[_1444]:
                    mem[mem[_1444] + _1444 + 196] = 0
                require ext_code.size(stor1[idx].field_512)
                call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0 / 1000 * Mask(112, 0, _1347), stor1[idx].field_768, 128, mem[_1444], mem[_1444 + 196 len ceil32(mem[_1444])]
            else:
                _1445 = mem[64]
                mem[mem[64]] = 0
                mem[64] = mem[64] + 32
                mem[_1445 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_1445 + 36] = 0 / 1000 * Mask(112, 0, _1347)
                mem[_1445 + 68] = 0
                mem[_1445 + 100] = stor1[idx].field_768
                mem[_1445 + 132] = 128
                mem[_1445 + 164] = mem[_1445]
                t = 0
                while t < mem[_1445]:
                    mem[t + _1445 + 196] = mem[t + _1445 + 32]
                    t = t + 32
                    continue 
                if ceil32(mem[_1445]) > mem[_1445]:
                    mem[mem[_1445] + _1445 + 196] = 0
                require ext_code.size(stor1[idx].field_512)
                call stor1[idx].field_512.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(mem[_1445]) + _1445 + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s >= 32:
                revert with 0, 50
            if this.address == stor1[idx].field_768:
                s = Mask(8, 248, stor1[idx].field_0)
                s = s
                idx = idx + 4
                t = 0 / 1000 * Mask(112, 0, _1347)
                continue 
            if s + 1 >= 32:
                revert with 0, 50
            mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1347)
            s = Mask(8, 248, stor1[idx].field_0)
            s = s + 1
            idx = idx + 4
            t = 0 / 1000 * Mask(112, 0, _1347)
            continue 
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = cd[100]
        mem[mem[64] + 68] = 1
        staticcall address(ext_call.return_data[0]).toAmount(address arg1, uint256 arg2, bool arg3) with:
                gas gas_remaining wei
               args address(cd[36]), cd[100], 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _920 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _946 = mem[_920]
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = _946
        call address(cd[36]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _946
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _990 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_990] == bool(mem[_990])
        mem[mem[64] + 36] = address(ext_call.return_data[0])
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = 0
        mem[mem[64] + 132] = cd[100]
        call address(ext_call.return_data[0]).deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args address(cd[36]), address(ext_call.return_data[0]), this.address, 0, cd[100]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        mem[mem[64] + 4] = this.address
        staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1212 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        stor2 = mem[_1212]
    else:
        if Mask(8, 248, uint256(stor1.field_0)) != 0x300000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, uint256(stor1.field_0)) != 0x100000000000000000000000000000000000000000000000000000000000000:
                mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                s = Mask(8, 248, uint256(stor1.field_0))
                s = 0
                idx = 0
                t = ext_call.return_data[0]
                while idx < stor1.length:
                    mem[0] = 1
                    if Mask(8, 248, stor1[idx].field_0):
                        if Mask(8, 248, stor1[idx].field_0) == 0x500000000000000000000000000000000000000000000000000000000000000:
                            mem[mem[64] + 4] = this.address
                            staticcall stor1[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _957 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s + 1 >= 32:
                                revert with 0, 50
                            mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = mem[_957]
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s + 1
                            idx = idx + 1
                            t = t
                            continue 
                        if Mask(8, 248, stor1[idx].field_0) != 0x600000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'op'
                        if s >= 32:
                            revert with 0, 50
                        if idx + 1 >= stor1.length:
                            revert with 0, 50
                        mem[0] = 1
                        mem[mem[64] + 4] = stor1[idx].field_256
                        mem[mem[64] + 36] = 0
                        call stor1[idx].field_0.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1[idx].field_256, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1084 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1084] == bool(mem[_1084])
                        if not mem[_1084]:
                            revert with 0, 'xfer'
                        if s >= 32:
                            revert with 0, 50
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 2
                        t = 0
                        continue 
                    if s >= 32:
                        revert with 0, 50
                    if idx + 3 >= stor1.length:
                        revert with 0, 50
                    if idx + 1 >= stor1.length:
                        revert with 0, 50
                    if idx + 2 >= stor1.length:
                        revert with 0, 50
                    mem[0] = 1
                    staticcall stor1[idx].field_512.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor1[idx].field_0 < stor1[idx].field_256:
                        _1304 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1324 = mem[_1304]
                        require mem[_1304] == mem[_1304 + 18 len 14]
                        _1340 = mem[_1304 + 32]
                        require mem[_1304 + 32] == mem[_1304 + 50 len 14]
                        require mem[_1304 + 64] == mem[_1304 + 92 len 4]
                        if stor1[idx].field_0 == stor1[idx].field_0:
                            if not 1000 * mem[_1304 + 18 len 14]:
                                revert with 0, 18
                            if stor1[idx].field_0 == stor1[idx].field_0:
                                _1414 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1414 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1414 + 36] = 0
                                mem[_1414 + 68] = 0 / 1000 * Mask(112, 0, _1324)
                                mem[_1414 + 100] = stor1[idx].field_768
                                mem[_1414 + 132] = 128
                                mem[_1414 + 164] = mem[_1414]
                                t = 0
                                while t < mem[_1414]:
                                    mem[t + _1414 + 196] = mem[t + _1414 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1414]) > mem[_1414]:
                                    mem[mem[_1414] + _1414 + 196] = 0
                                require ext_code.size(stor1[idx].field_512)
                                call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 1000 * Mask(112, 0, _1324), stor1[idx].field_768, 128, mem[_1414], mem[_1414 + 196 len ceil32(mem[_1414])]
                            else:
                                _1415 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1415 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1415 + 36] = 0 / 1000 * Mask(112, 0, _1324)
                                mem[_1415 + 68] = 0
                                mem[_1415 + 100] = stor1[idx].field_768
                                mem[_1415 + 132] = 128
                                mem[_1415 + 164] = mem[_1415]
                                t = 0
                                while t < mem[_1415]:
                                    mem[t + _1415 + 196] = mem[t + _1415 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1415]) > mem[_1415]:
                                    mem[mem[_1415] + _1415 + 196] = 0
                                require ext_code.size(stor1[idx].field_512)
                                call stor1[idx].field_512.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(mem[_1415]) + _1415 + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s >= 32:
                                revert with 0, 50
                            if this.address == stor1[idx].field_768:
                                s = Mask(8, 248, stor1[idx].field_0)
                                s = s
                                idx = idx + 4
                                t = 0 / 1000 * Mask(112, 0, _1324)
                                continue 
                            if s + 1 >= 32:
                                revert with 0, 50
                            mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1324)
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s + 1
                            idx = idx + 4
                            t = 0 / 1000 * Mask(112, 0, _1324)
                            continue 
                        if not 1000 * mem[_1304 + 50 len 14]:
                            revert with 0, 18
                        if stor1[idx].field_0 == stor1[idx].field_0:
                            _1416 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_1416 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1416 + 36] = 0
                            mem[_1416 + 68] = 0 / 1000 * Mask(112, 0, _1340)
                            mem[_1416 + 100] = stor1[idx].field_768
                            mem[_1416 + 132] = 128
                            mem[_1416 + 164] = mem[_1416]
                            t = 0
                            while t < mem[_1416]:
                                mem[t + _1416 + 196] = mem[t + _1416 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1416]) > mem[_1416]:
                                mem[mem[_1416] + _1416 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(mem[_1416]) + _1416 + -mem[64] + 192]
                        else:
                            _1417 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_1417 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1417 + 36] = 0 / 1000 * Mask(112, 0, _1340)
                            mem[_1417 + 68] = 0
                            mem[_1417 + 100] = stor1[idx].field_768
                            mem[_1417 + 132] = 128
                            mem[_1417 + 164] = mem[_1417]
                            t = 0
                            while t < mem[_1417]:
                                mem[t + _1417 + 196] = mem[t + _1417 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1417]) > mem[_1417]:
                                mem[mem[_1417] + _1417 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / 1000 * Mask(112, 0, _1340), 0, stor1[idx].field_768, 128, mem[_1417], mem[_1417 + 196 len ceil32(mem[_1417])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s >= 32:
                            revert with 0, 50
                        if this.address == stor1[idx].field_768:
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s
                            idx = idx + 4
                            t = 0 / 1000 * Mask(112, 0, _1340)
                            continue 
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1340)
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _1340)
                        continue 
                    _1305 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1325 = mem[_1305]
                    require mem[_1305] == mem[_1305 + 18 len 14]
                    _1341 = mem[_1305 + 32]
                    require mem[_1305 + 32] == mem[_1305 + 50 len 14]
                    require mem[_1305 + 64] == mem[_1305 + 92 len 4]
                    if stor1[idx].field_0 == stor1[idx].field_256:
                        if not 1000 * mem[_1305 + 18 len 14]:
                            revert with 0, 18
                        if stor1[idx].field_0 == stor1[idx].field_256:
                            _1418 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_1418 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1418 + 36] = 0
                            mem[_1418 + 68] = 0 / 1000 * Mask(112, 0, _1325)
                            mem[_1418 + 100] = stor1[idx].field_768
                            mem[_1418 + 132] = 128
                            mem[_1418 + 164] = mem[_1418]
                            t = 0
                            while t < mem[_1418]:
                                mem[t + _1418 + 196] = mem[t + _1418 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1418]) > mem[_1418]:
                                mem[mem[_1418] + _1418 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 1000 * Mask(112, 0, _1325), stor1[idx].field_768, 128, mem[_1418], mem[_1418 + 196 len ceil32(mem[_1418])]
                        else:
                            _1419 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_1419 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1419 + 36] = 0 / 1000 * Mask(112, 0, _1325)
                            mem[_1419 + 68] = 0
                            mem[_1419 + 100] = stor1[idx].field_768
                            mem[_1419 + 132] = 128
                            mem[_1419 + 164] = mem[_1419]
                            t = 0
                            while t < mem[_1419]:
                                mem[t + _1419 + 196] = mem[t + _1419 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1419]) > mem[_1419]:
                                mem[mem[_1419] + _1419 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(mem[_1419]) + _1419 + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s >= 32:
                            revert with 0, 50
                        if this.address == stor1[idx].field_768:
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s
                            idx = idx + 4
                            t = 0 / 1000 * Mask(112, 0, _1325)
                            continue 
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1325)
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _1325)
                        continue 
                    if not 1000 * mem[_1305 + 50 len 14]:
                        revert with 0, 18
                    if stor1[idx].field_0 == stor1[idx].field_256:
                        _1420 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1420 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1420 + 36] = 0
                        mem[_1420 + 68] = 0 / 1000 * Mask(112, 0, _1341)
                        mem[_1420 + 100] = stor1[idx].field_768
                        mem[_1420 + 132] = 128
                        mem[_1420 + 164] = mem[_1420]
                        t = 0
                        while t < mem[_1420]:
                            mem[t + _1420 + 196] = mem[t + _1420 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1420]) > mem[_1420]:
                            mem[mem[_1420] + _1420 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 1000 * Mask(112, 0, _1341), stor1[idx].field_768, 128, mem[_1420], mem[_1420 + 196 len ceil32(mem[_1420])]
                    else:
                        _1421 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1421 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1421 + 36] = 0 / 1000 * Mask(112, 0, _1341)
                        mem[_1421 + 68] = 0
                        mem[_1421 + 100] = stor1[idx].field_768
                        mem[_1421 + 132] = 128
                        mem[_1421 + 164] = mem[_1421]
                        t = 0
                        while t < mem[_1421]:
                            mem[t + _1421 + 196] = mem[t + _1421 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1421]) > mem[_1421]:
                            mem[mem[_1421] + _1421 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_1421]) + _1421 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s >= 32:
                        revert with 0, 50
                    if this.address == stor1[idx].field_768:
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _1341)
                        continue 
                    if s + 1 >= 32:
                        revert with 0, 50
                    mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1341)
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s + 1
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _1341)
                    continue 
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = cd[100]
                mem[mem[64] + 68] = 1
                staticcall address(ext_call.return_data[0]).toAmount(address arg1, uint256 arg2, bool arg3) with:
                        gas gas_remaining wei
                       args address(cd[36]), cd[100], 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _914 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _934 = mem[_914]
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = _934
                call address(cd[36]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _934
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _978 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_978] == bool(mem[_978])
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = cd[100]
                call address(ext_call.return_data[0]).deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args address(cd[36]), address(ext_call.return_data[0]), this.address, 0, cd[100]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                mem[mem[64] + 4] = this.address
                staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1206 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                stor2 = mem[_1206]
            else:
                require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
                call 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.leave(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 1156] = this.address
                staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
                mem[64] = (6 * ceil32(return_data.size)) + 1152
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                s = Mask(8, 248, uint256(stor1.field_0))
                s = 0
                idx = 1
                t = ext_call.return_data[0]
                while idx < stor1.length:
                    mem[0] = 1
                    if Mask(8, 248, stor1[idx].field_0):
                        if Mask(8, 248, stor1[idx].field_0) == 0x500000000000000000000000000000000000000000000000000000000000000:
                            mem[mem[64] + 4] = this.address
                            staticcall stor1[idx].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _961 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s + 1 >= 32:
                                revert with 0, 50
                            mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = mem[_961]
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s + 1
                            idx = idx + 1
                            t = t
                            continue 
                        if Mask(8, 248, stor1[idx].field_0) != 0x600000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'op'
                        if s >= 32:
                            revert with 0, 50
                        if idx + 1 >= stor1.length:
                            revert with 0, 50
                        mem[0] = 1
                        mem[mem[64] + 4] = stor1[idx].field_256
                        mem[mem[64] + 36] = 0
                        call stor1[idx].field_0.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1[idx].field_256, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1085 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1085] == bool(mem[_1085])
                        if not mem[_1085]:
                            revert with 0, 'xfer'
                        if s >= 32:
                            revert with 0, 50
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 2
                        t = 0
                        continue 
                    if s >= 32:
                        revert with 0, 50
                    if idx + 3 >= stor1.length:
                        revert with 0, 50
                    if idx + 1 >= stor1.length:
                        revert with 0, 50
                    if idx + 2 >= stor1.length:
                        revert with 0, 50
                    mem[0] = 1
                    staticcall stor1[idx].field_512.getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor1[idx].field_0 < stor1[idx].field_256:
                        _1306 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1326 = mem[_1306]
                        require mem[_1306] == mem[_1306 + 18 len 14]
                        _1342 = mem[_1306 + 32]
                        require mem[_1306 + 32] == mem[_1306 + 50 len 14]
                        require mem[_1306 + 64] == mem[_1306 + 92 len 4]
                        if stor1[idx].field_0 == stor1[idx].field_0:
                            if not 1000 * mem[_1306 + 18 len 14]:
                                revert with 0, 18
                            if stor1[idx].field_0 == stor1[idx].field_0:
                                _1422 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1422 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1422 + 36] = 0
                                mem[_1422 + 68] = 0 / 1000 * Mask(112, 0, _1326)
                                mem[_1422 + 100] = stor1[idx].field_768
                                mem[_1422 + 132] = 128
                                mem[_1422 + 164] = mem[_1422]
                                t = 0
                                while t < mem[_1422]:
                                    mem[t + _1422 + 196] = mem[t + _1422 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1422]) > mem[_1422]:
                                    mem[mem[_1422] + _1422 + 196] = 0
                                require ext_code.size(stor1[idx].field_512)
                                call stor1[idx].field_512.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(mem[_1422]) + _1422 + -mem[64] + 192]
                            else:
                                _1423 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1423 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1423 + 36] = 0 / 1000 * Mask(112, 0, _1326)
                                mem[_1423 + 68] = 0
                                mem[_1423 + 100] = stor1[idx].field_768
                                mem[_1423 + 132] = 128
                                mem[_1423 + 164] = mem[_1423]
                                t = 0
                                while t < mem[_1423]:
                                    mem[t + _1423 + 196] = mem[t + _1423 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(mem[_1423]) > mem[_1423]:
                                    mem[mem[_1423] + _1423 + 196] = 0
                                require ext_code.size(stor1[idx].field_512)
                                call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / 1000 * Mask(112, 0, _1326), 0, stor1[idx].field_768, 128, mem[_1423], mem[_1423 + 196 len ceil32(mem[_1423])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s >= 32:
                                revert with 0, 50
                            if this.address == stor1[idx].field_768:
                                s = Mask(8, 248, stor1[idx].field_0)
                                s = s
                                idx = idx + 4
                                t = 0 / 1000 * Mask(112, 0, _1326)
                                continue 
                            if s + 1 >= 32:
                                revert with 0, 50
                            mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1326)
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s + 1
                            idx = idx + 4
                            t = 0 / 1000 * Mask(112, 0, _1326)
                            continue 
                        if not 1000 * mem[_1306 + 50 len 14]:
                            revert with 0, 18
                        if stor1[idx].field_0 == stor1[idx].field_0:
                            _1424 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_1424 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1424 + 36] = 0
                            mem[_1424 + 68] = 0 / 1000 * Mask(112, 0, _1342)
                            mem[_1424 + 100] = stor1[idx].field_768
                            mem[_1424 + 132] = 128
                            mem[_1424 + 164] = mem[_1424]
                            t = 0
                            while t < mem[_1424]:
                                mem[t + _1424 + 196] = mem[t + _1424 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1424]) > mem[_1424]:
                                mem[mem[_1424] + _1424 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 1000 * Mask(112, 0, _1342), stor1[idx].field_768, 128, mem[_1424], mem[_1424 + 196 len ceil32(mem[_1424])]
                        else:
                            _1425 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_1425 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1425 + 36] = 0 / 1000 * Mask(112, 0, _1342)
                            mem[_1425 + 68] = 0
                            mem[_1425 + 100] = stor1[idx].field_768
                            mem[_1425 + 132] = 128
                            mem[_1425 + 164] = mem[_1425]
                            t = 0
                            while t < mem[_1425]:
                                mem[t + _1425 + 196] = mem[t + _1425 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1425]) > mem[_1425]:
                                mem[mem[_1425] + _1425 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / 1000 * Mask(112, 0, _1342), 0, stor1[idx].field_768, 128, mem[_1425], mem[_1425 + 196 len ceil32(mem[_1425])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s >= 32:
                            revert with 0, 50
                        if this.address == stor1[idx].field_768:
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s
                            idx = idx + 4
                            t = 0 / 1000 * Mask(112, 0, _1342)
                            continue 
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1342)
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _1342)
                        continue 
                    _1307 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1327 = mem[_1307]
                    require mem[_1307] == mem[_1307 + 18 len 14]
                    _1343 = mem[_1307 + 32]
                    require mem[_1307 + 32] == mem[_1307 + 50 len 14]
                    require mem[_1307 + 64] == mem[_1307 + 92 len 4]
                    if stor1[idx].field_0 == stor1[idx].field_256:
                        if not 1000 * mem[_1307 + 18 len 14]:
                            revert with 0, 18
                        if stor1[idx].field_0 == stor1[idx].field_256:
                            _1426 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_1426 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1426 + 36] = 0
                            mem[_1426 + 68] = 0 / 1000 * Mask(112, 0, _1327)
                            mem[_1426 + 100] = stor1[idx].field_768
                            mem[_1426 + 132] = 128
                            mem[_1426 + 164] = mem[_1426]
                            t = 0
                            while t < mem[_1426]:
                                mem[t + _1426 + 196] = mem[t + _1426 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1426]) > mem[_1426]:
                                mem[mem[_1426] + _1426 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(mem[_1426]) + _1426 + -mem[64] + 192]
                        else:
                            _1427 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_1427 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1427 + 36] = 0 / 1000 * Mask(112, 0, _1327)
                            mem[_1427 + 68] = 0
                            mem[_1427 + 100] = stor1[idx].field_768
                            mem[_1427 + 132] = 128
                            mem[_1427 + 164] = mem[_1427]
                            t = 0
                            while t < mem[_1427]:
                                mem[t + _1427 + 196] = mem[t + _1427 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1427]) > mem[_1427]:
                                mem[mem[_1427] + _1427 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / 1000 * Mask(112, 0, _1327), 0, stor1[idx].field_768, 128, mem[_1427], mem[_1427 + 196 len ceil32(mem[_1427])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s >= 32:
                            revert with 0, 50
                        if this.address == stor1[idx].field_768:
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s
                            idx = idx + 4
                            t = 0 / 1000 * Mask(112, 0, _1327)
                            continue 
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1327)
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _1327)
                        continue 
                    if not 1000 * mem[_1307 + 50 len 14]:
                        revert with 0, 18
                    if stor1[idx].field_0 == stor1[idx].field_256:
                        _1428 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1428 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1428 + 36] = 0
                        mem[_1428 + 68] = 0 / 1000 * Mask(112, 0, _1343)
                        mem[_1428 + 100] = stor1[idx].field_768
                        mem[_1428 + 132] = 128
                        mem[_1428 + 164] = mem[_1428]
                        t = 0
                        while t < mem[_1428]:
                            mem[t + _1428 + 196] = mem[t + _1428 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1428]) > mem[_1428]:
                            mem[mem[_1428] + _1428 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 1000 * Mask(112, 0, _1343), stor1[idx].field_768, 128, mem[_1428], mem[_1428 + 196 len ceil32(mem[_1428])]
                    else:
                        _1429 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1429 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1429 + 36] = 0 / 1000 * Mask(112, 0, _1343)
                        mem[_1429 + 68] = 0
                        mem[_1429 + 100] = stor1[idx].field_768
                        mem[_1429 + 132] = 128
                        mem[_1429 + 164] = mem[_1429]
                        t = 0
                        while t < mem[_1429]:
                            mem[t + _1429 + 196] = mem[t + _1429 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1429]) > mem[_1429]:
                            mem[mem[_1429] + _1429 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_1429]) + _1429 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s >= 32:
                        revert with 0, 50
                    if this.address == stor1[idx].field_768:
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _1343)
                        continue 
                    if s + 1 >= 32:
                        revert with 0, 50
                    mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1343)
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s + 1
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _1343)
                    continue 
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = cd[100]
                mem[mem[64] + 68] = 1
                staticcall address(ext_call.return_data[0]).toAmount(address arg1, uint256 arg2, bool arg3) with:
                        gas gas_remaining wei
                       args address(cd[36]), cd[100], 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _916 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _938 = mem[_916]
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = _938
                call address(cd[36]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _938
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _982 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_982] == bool(mem[_982])
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = cd[100]
                call address(ext_call.return_data[0]).deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args address(cd[36]), address(ext_call.return_data[0]), this.address, 0, cd[100]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                mem[mem[64] + 4] = this.address
                staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1208 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                stor2 = mem[_1208]
        else:
            mem[(4 * ceil32(return_data.size)) + 1156] = address(cd[4])
            mem[(4 * ceil32(return_data.size)) + 1188] = ext_call.return_data[0]
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 1152] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'pair'
            call address(cd[4]).burn(address arg1) with:
                 gas gas_remaining wei
                args this.address
            mem[(6 * ceil32(return_data.size)) + 1152 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 1152
            require return_data.size >= 64
            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[32]
            mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            s = Mask(8, 248, uint256(stor1.field_0))
            s = 1
            idx = 1
            t = ext_call.return_data[0]
            while idx < stor1.length:
                mem[0] = 1
                if Mask(8, 248, stor1[idx].field_0):
                    if Mask(8, 248, stor1[idx].field_0) == 0x500000000000000000000000000000000000000000000000000000000000000:
                        mem[mem[64] + 4] = this.address
                        staticcall stor1[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _965 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = mem[_965]
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 1
                        t = t
                        continue 
                    if Mask(8, 248, stor1[idx].field_0) != 0x600000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'op'
                    if s >= 32:
                        revert with 0, 50
                    if idx + 1 >= stor1.length:
                        revert with 0, 50
                    mem[0] = 1
                    mem[mem[64] + 4] = stor1[idx].field_256
                    mem[mem[64] + 36] = 0
                    call stor1[idx].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1[idx].field_256, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1086 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1086] == bool(mem[_1086])
                    if not mem[_1086]:
                        revert with 0, 'xfer'
                    if s >= 32:
                        revert with 0, 50
                    if s + 1 >= 32:
                        revert with 0, 50
                    mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s + 1
                    idx = idx + 2
                    t = 0
                    continue 
                if s >= 32:
                    revert with 0, 50
                if idx + 3 >= stor1.length:
                    revert with 0, 50
                if idx + 1 >= stor1.length:
                    revert with 0, 50
                if idx + 2 >= stor1.length:
                    revert with 0, 50
                mem[0] = 1
                staticcall stor1[idx].field_512.getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor1[idx].field_0 < stor1[idx].field_256:
                    _1308 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1328 = mem[_1308]
                    require mem[_1308] == mem[_1308 + 18 len 14]
                    _1344 = mem[_1308 + 32]
                    require mem[_1308 + 32] == mem[_1308 + 50 len 14]
                    require mem[_1308 + 64] == mem[_1308 + 92 len 4]
                    if stor1[idx].field_0 == stor1[idx].field_0:
                        if not 1000 * mem[_1308 + 18 len 14]:
                            revert with 0, 18
                        if stor1[idx].field_0 == stor1[idx].field_0:
                            _1430 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_1430 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1430 + 36] = 0
                            mem[_1430 + 68] = 0 / 1000 * Mask(112, 0, _1328)
                            mem[_1430 + 100] = stor1[idx].field_768
                            mem[_1430 + 132] = 128
                            mem[_1430 + 164] = mem[_1430]
                            t = 0
                            while t < mem[_1430]:
                                mem[t + _1430 + 196] = mem[t + _1430 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1430]) > mem[_1430]:
                                mem[mem[_1430] + _1430 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(mem[_1430]) + _1430 + -mem[64] + 192]
                        else:
                            _1431 = mem[64]
                            mem[mem[64]] = 0
                            mem[64] = mem[64] + 32
                            mem[_1431 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1431 + 36] = 0 / 1000 * Mask(112, 0, _1328)
                            mem[_1431 + 68] = 0
                            mem[_1431 + 100] = stor1[idx].field_768
                            mem[_1431 + 132] = 128
                            mem[_1431 + 164] = mem[_1431]
                            t = 0
                            while t < mem[_1431]:
                                mem[t + _1431 + 196] = mem[t + _1431 + 32]
                                t = t + 32
                                continue 
                            if ceil32(mem[_1431]) > mem[_1431]:
                                mem[mem[_1431] + _1431 + 196] = 0
                            require ext_code.size(stor1[idx].field_512)
                            call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / 1000 * Mask(112, 0, _1328), 0, stor1[idx].field_768, 128, mem[_1431], mem[_1431 + 196 len ceil32(mem[_1431])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s >= 32:
                            revert with 0, 50
                        if this.address == stor1[idx].field_768:
                            s = Mask(8, 248, stor1[idx].field_0)
                            s = s
                            idx = idx + 4
                            t = 0 / 1000 * Mask(112, 0, _1328)
                            continue 
                        if s + 1 >= 32:
                            revert with 0, 50
                        mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1328)
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s + 1
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _1328)
                        continue 
                    if not 1000 * mem[_1308 + 50 len 14]:
                        revert with 0, 18
                    if stor1[idx].field_0 == stor1[idx].field_0:
                        _1432 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1432 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1432 + 36] = 0
                        mem[_1432 + 68] = 0 / 1000 * Mask(112, 0, _1344)
                        mem[_1432 + 100] = stor1[idx].field_768
                        mem[_1432 + 132] = 128
                        mem[_1432 + 164] = mem[_1432]
                        t = 0
                        while t < mem[_1432]:
                            mem[t + _1432 + 196] = mem[t + _1432 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1432]) > mem[_1432]:
                            mem[mem[_1432] + _1432 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_1432]) + _1432 + -mem[64] + 192]
                    else:
                        _1433 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1433 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1433 + 36] = 0 / 1000 * Mask(112, 0, _1344)
                        mem[_1433 + 68] = 0
                        mem[_1433 + 100] = stor1[idx].field_768
                        mem[_1433 + 132] = 128
                        mem[_1433 + 164] = mem[_1433]
                        t = 0
                        while t < mem[_1433]:
                            mem[t + _1433 + 196] = mem[t + _1433 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1433]) > mem[_1433]:
                            mem[mem[_1433] + _1433 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(mem[_1433]) + _1433 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s >= 32:
                        revert with 0, 50
                    if this.address == stor1[idx].field_768:
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _1344)
                        continue 
                    if s + 1 >= 32:
                        revert with 0, 50
                    mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1344)
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s + 1
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _1344)
                    continue 
                _1309 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1329 = mem[_1309]
                require mem[_1309] == mem[_1309 + 18 len 14]
                _1345 = mem[_1309 + 32]
                require mem[_1309 + 32] == mem[_1309 + 50 len 14]
                require mem[_1309 + 64] == mem[_1309 + 92 len 4]
                if stor1[idx].field_0 == stor1[idx].field_256:
                    if not 1000 * mem[_1309 + 18 len 14]:
                        revert with 0, 18
                    if stor1[idx].field_0 == stor1[idx].field_256:
                        _1434 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1434 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1434 + 36] = 0
                        mem[_1434 + 68] = 0 / 1000 * Mask(112, 0, _1329)
                        mem[_1434 + 100] = stor1[idx].field_768
                        mem[_1434 + 132] = 128
                        mem[_1434 + 164] = mem[_1434]
                        t = 0
                        while t < mem[_1434]:
                            mem[t + _1434 + 196] = mem[t + _1434 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1434]) > mem[_1434]:
                            mem[mem[_1434] + _1434 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 1000 * Mask(112, 0, _1329), stor1[idx].field_768, 128, mem[_1434], mem[_1434 + 196 len ceil32(mem[_1434])]
                    else:
                        _1435 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_1435 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1435 + 36] = 0 / 1000 * Mask(112, 0, _1329)
                        mem[_1435 + 68] = 0
                        mem[_1435 + 100] = stor1[idx].field_768
                        mem[_1435 + 132] = 128
                        mem[_1435 + 164] = mem[_1435]
                        t = 0
                        while t < mem[_1435]:
                            mem[t + _1435 + 196] = mem[t + _1435 + 32]
                            t = t + 32
                            continue 
                        if ceil32(mem[_1435]) > mem[_1435]:
                            mem[mem[_1435] + _1435 + 196] = 0
                        require ext_code.size(stor1[idx].field_512)
                        call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / 1000 * Mask(112, 0, _1329), 0, stor1[idx].field_768, 128, mem[_1435], mem[_1435 + 196 len ceil32(mem[_1435])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if s >= 32:
                        revert with 0, 50
                    if this.address == stor1[idx].field_768:
                        s = Mask(8, 248, stor1[idx].field_0)
                        s = s
                        idx = idx + 4
                        t = 0 / 1000 * Mask(112, 0, _1329)
                        continue 
                    if s + 1 >= 32:
                        revert with 0, 50
                    mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1329)
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s + 1
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _1329)
                    continue 
                if not 1000 * mem[_1309 + 50 len 14]:
                    revert with 0, 18
                if stor1[idx].field_0 == stor1[idx].field_256:
                    _1436 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_1436 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1436 + 36] = 0
                    mem[_1436 + 68] = 0 / 1000 * Mask(112, 0, _1345)
                    mem[_1436 + 100] = stor1[idx].field_768
                    mem[_1436 + 132] = 128
                    mem[_1436 + 164] = mem[_1436]
                    t = 0
                    while t < mem[_1436]:
                        mem[t + _1436 + 196] = mem[t + _1436 + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_1436]) > mem[_1436]:
                        mem[mem[_1436] + _1436 + 196] = 0
                    require ext_code.size(stor1[idx].field_512)
                    call stor1[idx].field_512.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(mem[_1436]) + _1436 + -mem[64] + 192]
                else:
                    _1437 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_1437 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1437 + 36] = 0 / 1000 * Mask(112, 0, _1345)
                    mem[_1437 + 68] = 0
                    mem[_1437 + 100] = stor1[idx].field_768
                    mem[_1437 + 132] = 128
                    mem[_1437 + 164] = mem[_1437]
                    t = 0
                    while t < mem[_1437]:
                        mem[t + _1437 + 196] = mem[t + _1437 + 32]
                        t = t + 32
                        continue 
                    if ceil32(mem[_1437]) > mem[_1437]:
                        mem[mem[_1437] + _1437 + 196] = 0
                    require ext_code.size(stor1[idx].field_512)
                    call stor1[idx].field_512.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / 1000 * Mask(112, 0, _1345), 0, stor1[idx].field_768, 128, mem[_1437], mem[_1437 + 196 len ceil32(mem[_1437])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if s >= 32:
                    revert with 0, 50
                if this.address == stor1[idx].field_768:
                    s = Mask(8, 248, stor1[idx].field_0)
                    s = s
                    idx = idx + 4
                    t = 0 / 1000 * Mask(112, 0, _1345)
                    continue 
                if s + 1 >= 32:
                    revert with 0, 50
                mem[(32 * s + 1) + (4 * ceil32(return_data.size)) + 128] = 0 / 1000 * Mask(112, 0, _1345)
                s = Mask(8, 248, stor1[idx].field_0)
                s = s + 1
                idx = idx + 4
                t = 0 / 1000 * Mask(112, 0, _1345)
                continue 
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = cd[100]
            mem[mem[64] + 68] = 1
            staticcall address(ext_call.return_data[0]).toAmount(address arg1, uint256 arg2, bool arg3) with:
                    gas gas_remaining wei
                   args address(cd[36]), cd[100], 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _918 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _942 = mem[_918]
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = _942
            call address(cd[36]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _942
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _986 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_986] == bool(mem[_986])
            mem[mem[64] + 36] = address(ext_call.return_data[0])
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = cd[100]
            call address(ext_call.return_data[0]).deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args address(cd[36]), address(ext_call.return_data[0]), this.address, 0, cd[100]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            mem[mem[64] + 4] = this.address
            staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            stor2 = mem[_1210]
    return 0
}



}
