contract main {




// =====================  Runtime code  =====================


#
#  - elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - complusV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - canaryCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_586c5f6a(?)
#  - sub_6dca4cd4(?)
#  - sub_79b3fd8f(?)
#  - zeroCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - baguetteCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - yetiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_df9aee68(?)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_f05ffd30(?)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function skim(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = arg2
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return ext_call.return_data[0]
}

function sub_c687b846(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 4)])
    s = 292
    idx = 0
    t = cd[4] + ('cd', 4)[1] + 36
    while idx < cd[(cd[4] + ('cd', 4)[1] + 4)]:
        mem[s] = cd[t]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require ('cd', 4)[2] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[2] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[2] + 4)])
    mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 292] = cd[(cd[4] + ('cd', 4)[2] + 4)]
    idx = 0
    s = (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 324
    t = cd[4] + ('cd', 4)[2] + 36
    while idx < cd[(cd[4] + ('cd', 4)[2] + 4)]:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(this.address)
    call this.address.0xf82c498b with:
         gas gas_remaining wei
        args 32, address(('cd', 4).length), address(('cd', 4)[0]), 128, (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 160, cd[(cd[4] + ('cd', 4)[1] + 4)], mem[292 len (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 32]
    if not ext_call.success:
        if return_data.size <= 3:
            if not return_data.size:
                emit 0xd5a827cf: ' '
            else:
                emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        else:
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                if uint32(mem[4 len 28]) >> 224 != Panic(uint256 arg1):
                    if not return_data.size:
                        emit 0xd5a827cf: ' '
                    else:
                        emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                else:
                    if return_data.size > 35:
                        emit 0x8c3808c0: ext_call.return_data[4]
                    else:
                        if not return_data.size:
                            emit 0xd5a827cf: ' '
                        else:
                            emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
            else:
                if return_data.size < 68:
                    if not return_data.size:
                        emit 0xd5a827cf: ' '
                    else:
                        emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                else:
                    if not bool(36 <= return_data.size):
                        if not return_data.size:
                            emit 0xd5a827cf: ' '
                        else:
                            emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                    else:
                        if unknown_0xf82c498b(?????), 0 > test266151307():
                            if not return_data.size:
                                emit 0xd5a827cf: ' '
                            else:
                                emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
                        else:
                            if unknown_0xf82c498b(?????), 0 + 32 <= return_data.size - 4:
                                if ceil32(unknown_0xf82c498b(?????), 0) + 97 < 96 or ceil32(unknown_0xf82c498b(?????), 0) + 97 > test266151307():
                                    revert with 0, 65
                                emit 0x3f0c48ab: ''
                            else:
                                if not return_data.size:
                                    emit 0xd5a827cf: ' '
                                else:
                                    emit 0xd5a827cf: Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_f82c498b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 128
    if this.address != msg.sender:
        revert with 0, 'Caller is not self'
    require ('cd', 4)[1] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 4)])
    if 1 >= cd[(cd[4] + ('cd', 4)[1] + 4)]:
        revert with 0, 50
    if cd[(cd[4] + ('cd', 4)[1] + 68)] >= 0:
        require ('cd', 4)[2] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[2] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[2] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[2] + 4)])
        if 0 >= cd[(cd[4] + ('cd', 4)[2] + 4)]:
            revert with 0, 50
        require cd[(cd[4] + ('cd', 4)[2] + 36)] == address(cd[(cd[4] + ('cd', 4)[2] + 36)])
        mem[128] = 32
        require ('cd', 4).length == address(('cd', 4).length)
        mem[160] = address(('cd', 4).length)
        require ('cd', 4)[0] == address(('cd', 4)[0])
        mem[192] = address(('cd', 4)[0])
        require ('cd', 4)[1] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
        require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 4)])
        mem[224] = 128
        mem[288] = cd[(cd[4] + ('cd', 4)[1] + 4)]
        s = 320
        idx = 0
        t = cd[4] + ('cd', 4)[1] + 36
        while idx < cd[(cd[4] + ('cd', 4)[1] + 4)]:
            mem[s] = cd[t]
            s = s + 32
            idx = idx + 1
            t = t + 32
            continue 
        require ('cd', 4)[2] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[2] + 4)] <= test266151307()
        require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[2] + 4)])
        mem[256] = (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 160
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320] = cd[(cd[4] + ('cd', 4)[2] + 4)]
        idx = 0
        s = (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352
        t = cd[4] + ('cd', 4)[2] + 36
        while idx < cd[(cd[4] + ('cd', 4)[2] + 4)]:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 356] = 0
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 388] = cd[(cd[4] + ('cd', 4)[1] + 68)]
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 420] = this.address
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 452] = 128
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 484] = mem[96]
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 516 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 516] = 0
        require ext_code.size(address(cd[(cd[4] + ('cd', 4)[2] + 36)]))
        call address(cd[(cd[4] + ('cd', 4)[2] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, cd[(cd[4] + ('cd', 4)[1] + 68)], address(this.address), 128, mem[96], mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 516 len ceil32(mem[96])]
    else:
        if cd[(cd[4] + ('cd', 4)[1] + 68)] == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        require ('cd', 4)[2] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[2] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[2] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[2] + 4)])
        if 0 >= cd[(cd[4] + ('cd', 4)[2] + 4)]:
            revert with 0, 50
        require cd[(cd[4] + ('cd', 4)[2] + 36)] == address(cd[(cd[4] + ('cd', 4)[2] + 36)])
        mem[128] = 32
        require ('cd', 4).length == address(('cd', 4).length)
        mem[160] = address(('cd', 4).length)
        require ('cd', 4)[0] == address(('cd', 4)[0])
        mem[192] = address(('cd', 4)[0])
        require ('cd', 4)[1] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
        require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 4)])
        mem[224] = 128
        mem[288] = cd[(cd[4] + ('cd', 4)[1] + 4)]
        s = 320
        idx = 0
        t = cd[4] + ('cd', 4)[1] + 36
        while idx < cd[(cd[4] + ('cd', 4)[1] + 4)]:
            mem[s] = cd[t]
            s = s + 32
            idx = idx + 1
            t = t + 32
            continue 
        require ('cd', 4)[2] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[2] + 4)] <= test266151307()
        require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[2] + 4)])
        mem[256] = (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 160
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320] = cd[(cd[4] + ('cd', 4)[2] + 4)]
        idx = 0
        s = (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352
        t = cd[4] + ('cd', 4)[2] + 36
        while idx < cd[(cd[4] + ('cd', 4)[2] + 4)]:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 356] = -cd[(cd[4] + ('cd', 4)[1] + 68)]
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 388] = 0
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 420] = this.address
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 452] = 128
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 484] = mem[96]
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 516 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 516] = 0
        require ext_code.size(address(cd[(cd[4] + ('cd', 4)[2] + 36)]))
        call address(cd[(cd[4] + ('cd', 4)[2] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args -cd[(cd[4] + ('cd', 4)[1] + 68)], 0, address(this.address), 128, mem[96], mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 516 len ceil32(mem[96])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1a5ae2d5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 4)[1] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 4)])
    if 1 >= cd[(cd[4] + ('cd', 4)[1] + 4)]:
        revert with 0, 50
    if cd[(cd[4] + ('cd', 4)[1] + 68)] >= 0:
        require ('cd', 4)[2] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[2] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[2] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[2] + 4)])
        if 0 >= cd[(cd[4] + ('cd', 4)[2] + 4)]:
            revert with 0, 50
        require cd[(cd[4] + ('cd', 4)[2] + 36)] == address(cd[(cd[4] + ('cd', 4)[2] + 36)])
        mem[128] = 32
        require ('cd', 4).length == address(('cd', 4).length)
        mem[160] = address(('cd', 4).length)
        require ('cd', 4)[0] == address(('cd', 4)[0])
        mem[192] = address(('cd', 4)[0])
        require ('cd', 4)[1] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
        require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 4)])
        mem[224] = 128
        mem[288] = cd[(cd[4] + ('cd', 4)[1] + 4)]
        s = 320
        idx = 0
        t = cd[4] + ('cd', 4)[1] + 36
        while idx < cd[(cd[4] + ('cd', 4)[1] + 4)]:
            mem[s] = cd[t]
            s = s + 32
            idx = idx + 1
            t = t + 32
            continue 
        require ('cd', 4)[2] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[2] + 4)] <= test266151307()
        require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[2] + 4)])
        mem[256] = (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 160
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320] = cd[(cd[4] + ('cd', 4)[2] + 4)]
        idx = 0
        s = (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352
        t = cd[4] + ('cd', 4)[2] + 36
        while idx < cd[(cd[4] + ('cd', 4)[2] + 4)]:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 356] = 0
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 388] = cd[(cd[4] + ('cd', 4)[1] + 68)]
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 420] = this.address
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 452] = 128
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 484] = mem[96]
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 516 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 516] = 0
        require ext_code.size(address(cd[(cd[4] + ('cd', 4)[2] + 36)]))
        call address(cd[(cd[4] + ('cd', 4)[2] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, cd[(cd[4] + ('cd', 4)[1] + 68)], address(this.address), 128, mem[96], mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 516 len ceil32(mem[96])]
    else:
        if cd[(cd[4] + ('cd', 4)[1] + 68)] == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        require ('cd', 4)[2] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[2] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[2] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[2] + 4)])
        if 0 >= cd[(cd[4] + ('cd', 4)[2] + 4)]:
            revert with 0, 50
        require cd[(cd[4] + ('cd', 4)[2] + 36)] == address(cd[(cd[4] + ('cd', 4)[2] + 36)])
        mem[128] = 32
        require ('cd', 4).length == address(('cd', 4).length)
        mem[160] = address(('cd', 4).length)
        require ('cd', 4)[0] == address(('cd', 4)[0])
        mem[192] = address(('cd', 4)[0])
        require ('cd', 4)[1] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
        require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[1] + 4)])
        mem[224] = 128
        mem[288] = cd[(cd[4] + ('cd', 4)[1] + 4)]
        s = 320
        idx = 0
        t = cd[4] + ('cd', 4)[1] + 36
        while idx < cd[(cd[4] + ('cd', 4)[1] + 4)]:
            mem[s] = cd[t]
            s = s + 32
            idx = idx + 1
            t = t + 32
            continue 
        require ('cd', 4)[2] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[2] + 4)] <= test266151307()
        require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[2] + 4)])
        mem[256] = (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 160
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320] = cd[(cd[4] + ('cd', 4)[2] + 4)]
        idx = 0
        s = (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352
        t = cd[4] + ('cd', 4)[2] + 36
        while idx < cd[(cd[4] + ('cd', 4)[2] + 4)]:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 356] = -cd[(cd[4] + ('cd', 4)[1] + 68)]
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 388] = 0
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 420] = this.address
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 452] = 128
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 484] = mem[96]
        mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 516 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) > mem[96]:
            mem[mem[96] + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 516] = 0
        require ext_code.size(address(cd[(cd[4] + ('cd', 4)[2] + 36)]))
        call address(cd[(cd[4] + ('cd', 4)[2] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args -cd[(cd[4] + ('cd', 4)[1] + 68)], 0, address(this.address), 128, mem[96], mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 516 len ceil32(mem[96])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ae0ce2b7(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if this.address != msg.sender:
        revert with 0, 'Caller is not self'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 163
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)] <= test266151307()
        require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 68 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)])
        if 1 >= cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]:
            revert with 0, 50
        if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 100)] >= 0:
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)])
            if 0 >= cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]:
                revert with 0, 50
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)])
            _17 = mem[64]
            mem[mem[64] + 32] = 32
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
            mem[mem[64] + 64] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            mem[mem[64] + 96] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)])
            mem[mem[64] + 128] = 128
            mem[mem[64] + 192] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]
            s = mem[64] + 224
            t = 0
            u = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 68
            while t < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]:
                mem[s] = cd[u]
                s = s + 32
                t = t + 1
                u = u + 32
                continue 
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)])
            mem[_17 + 160] = s + -_17 - 64
            mem[s] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]
            t = 0
            u = s + 32
            v = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68
            while t < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]:
                require cd[v] == address(cd[v])
                mem[u] = address(cd[v])
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            _45 = mem[64]
            mem[64] = u
            mem[u] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[u + 4] = 0
            mem[u + 36] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 100)]
            mem[u + 68] = this.address
            mem[u + 100] = 128
            _48 = mem[_45]
            mem[u + 132] = mem[_45]
            s = 0
            while s < _48:
                mem[s + u + 164] = mem[s + _45 + 32]
                s = s + 32
                continue 
            if ceil32(_48) > _48:
                mem[_48 + u + 164] = 0
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)]))
            call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 100)], address(this.address), 128, mem[u + 132 len ceil32(_48) + 32]
        else:
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 100)] == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)])
            if 0 >= cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]:
                revert with 0, 50
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)])
            _18 = mem[64]
            mem[mem[64] + 32] = 32
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
            mem[mem[64] + 64] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            mem[mem[64] + 96] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)])
            mem[mem[64] + 128] = 128
            mem[mem[64] + 192] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]
            s = mem[64] + 224
            t = 0
            u = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 68
            while t < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]:
                mem[s] = cd[u]
                s = s + 32
                t = t + 1
                u = u + 32
                continue 
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)])
            mem[_18 + 160] = s + -_18 - 64
            mem[s] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]
            t = 0
            u = s + 32
            v = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68
            while t < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]:
                require cd[v] == address(cd[v])
                mem[u] = address(cd[v])
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            _43 = mem[64]
            mem[64] = u
            mem[u] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[u + 4] = -cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 100)]
            mem[u + 36] = 0
            mem[u + 68] = this.address
            mem[u + 100] = 128
            _47 = mem[_43]
            mem[u + 132] = mem[_43]
            s = 0
            while s < _47:
                mem[s + u + 164] = mem[s + _43 + 32]
                s = s + 32
                continue 
            if ceil32(_47) > _47:
                mem[_47 + u + 164] = 0
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)]))
            call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args -cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 100)], 0, address(this.address), 128, mem[u + 132 len ceil32(_47) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f12ea285(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 163
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)] <= test266151307()
        require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 68 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)])
        if 1 >= cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]:
            revert with 0, 50
        if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 100)] >= 0:
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)])
            if 0 >= cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]:
                revert with 0, 50
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)])
            _17 = mem[64]
            mem[mem[64] + 32] = 32
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
            mem[mem[64] + 64] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            mem[mem[64] + 96] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)])
            mem[mem[64] + 128] = 128
            mem[mem[64] + 192] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]
            s = mem[64] + 224
            t = 0
            u = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 68
            while t < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]:
                mem[s] = cd[u]
                s = s + 32
                t = t + 1
                u = u + 32
                continue 
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)])
            mem[_17 + 160] = s + -_17 - 64
            mem[s] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]
            t = 0
            u = s + 32
            v = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68
            while t < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]:
                require cd[v] == address(cd[v])
                mem[u] = address(cd[v])
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            _45 = mem[64]
            mem[64] = u
            mem[u] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[u + 4] = 0
            mem[u + 36] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 100)]
            mem[u + 68] = this.address
            mem[u + 100] = 128
            _48 = mem[_45]
            mem[u + 132] = mem[_45]
            s = 0
            while s < _48:
                mem[s + u + 164] = mem[s + _45 + 32]
                s = s + 32
                continue 
            if ceil32(_48) > _48:
                mem[_48 + u + 164] = 0
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)]))
            call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 100)], address(this.address), 128, mem[u + 132 len ceil32(_48) + 32]
        else:
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 100)] == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)])
            if 0 >= cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]:
                revert with 0, 50
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)])
            _18 = mem[64]
            mem[mem[64] + 32] = 32
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
            mem[mem[64] + 64] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            mem[mem[64] + 96] = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)])
            mem[mem[64] + 128] = 128
            mem[mem[64] + 192] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]
            s = mem[64] + 224
            t = 0
            u = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 68
            while t < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]:
                mem[s] = cd[u]
                s = s + 32
                t = t + 1
                u = u + 32
                continue 
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)])
            mem[_18 + 160] = s + -_18 - 64
            mem[s] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]
            t = 0
            u = s + 32
            v = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68
            while t < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 36)]:
                require cd[v] == address(cd[v])
                mem[u] = address(cd[v])
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            _43 = mem[64]
            mem[64] = u
            mem[u] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[u + 4] = -cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 100)]
            mem[u + 36] = 0
            mem[u + 68] = this.address
            mem[u + 100] = 128
            _47 = mem[_43]
            mem[u + 132] = mem[_43]
            s = 0
            while s < _47:
                mem[s + u + 164] = mem[s + _43 + 32]
                s = s + 32
                continue 
            if ceil32(_47) > _47:
                mem[_47 + u + 164] = 0
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)]))
            call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args -cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 100)], 0, address(this.address), 128, mem[u + 132 len ceil32(_47) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_13e1b395(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 0xae0ce2b700000000000000000000000000000000000000000000000000000000
    mem[100] = 32
    mem[132] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 164
    u = (32 * ('cd', 4).length) + 164
    while idx < ('cd', 4).length:
        mem[t] = u - 164
        require cd[s] < calldata.size + -cd[4] - 163
        require cd[(cd[s] + cd[4] + 36)] == address(cd[(cd[s] + cd[4] + 36)])
        mem[u] = address(cd[(cd[s] + cd[4] + 36)])
        require cd[(cd[s] + cd[4] + 68)] == address(cd[(cd[s] + cd[4] + 68)])
        mem[u + 32] = address(cd[(cd[s] + cd[4] + 68)])
        require cd[(cd[s] + cd[4] + 100)] < calldata.size + -cd[s] + -cd[4] - 67
        require cd[(cd[s] + cd[4] + cd[(cd[s] + cd[4] + 100)] + 36)] <= test266151307()
        require cd[s] + cd[4] + 36 <= calldata.size - (32 * cd[(cd[s] + cd[4] + cd[(cd[s] + cd[4] + 100)] + 36)])
        mem[u + 64] = 128
        mem[u + 128] = cd[(cd[s] + cd[4] + cd[(cd[s] + cd[4] + 100)] + 36)]
        v = u + 160
        w = 0
        x = cd[s] + cd[4] + cd[(cd[s] + cd[4] + 100)] + 68
        while w < cd[(cd[s] + cd[4] + cd[(cd[s] + cd[4] + 100)] + 36)]:
            mem[v] = cd[x]
            v = v + 32
            w = w + 1
            x = x + 32
            continue 
        require cd[(cd[s] + cd[4] + 132)] < calldata.size + -cd[s] + -cd[4] - 67
        require cd[(cd[s] + cd[4] + cd[(cd[s] + cd[4] + 132)] + 36)] <= test266151307()
        require cd[s] + cd[4] + 36 <= calldata.size - (32 * cd[(cd[s] + cd[4] + cd[(cd[s] + cd[4] + 132)] + 36)])
        mem[u + 96] = v - u
        mem[v] = cd[(cd[s] + cd[4] + cd[(cd[s] + cd[4] + 132)] + 36)]
        u = 0
        w = v + 32
        x = cd[s] + cd[4] + cd[(cd[s] + cd[4] + 132)] + 68
        while u < cd[(cd[s] + cd[4] + cd[(cd[s] + cd[4] + 132)] + 36)]:
            require cd[x] == address(cd[x])
            mem[w] = address(cd[x])
            u = u + 1
            w = w + 32
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = w
        continue 
    require ext_code.size(this.address)
    call this.address.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len u + -mem[64] - 4]
    if not ext_call.success:
        if return_data.size <= 3:
            if not return_data.size:
                _108 = mem[64]
                mem[mem[64]] = 32
                _117 = mem[96]
                mem[mem[64] + 32] = mem[96]
                mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    emit 0xd5a827cf: Array(len=mem[96], data=mem[mem[64] + 64 len ceil32(mem[96])])
                else:
                    mem[mem[96] + mem[64] + 64] = 0
                    emit 0xd5a827cf: mem[mem[64] len ceil32(_117) + _108 + -mem[64] + 64]
            else:
                _107 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_107] = return_data.size
                mem[_107 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = return_data.size
                mem[mem[64] + 64 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_107 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                if ceil32(return_data.size) > return_data.size:
                    mem[return_data.size + mem[64] + 64] = 0
                emit 0xd5a827cf: Array(len=return_data.size, data=mem[mem[64] + 64 len ceil32(return_data.size)])
        else:
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                if uint32(mem[4 len 28]) >> 224 != Panic(uint256 arg1):
                    if not return_data.size:
                        _113 = mem[64]
                        mem[mem[64]] = 32
                        _119 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            emit 0xd5a827cf: Array(len=mem[96], data=mem[mem[64] + 64 len ceil32(mem[96])])
                        else:
                            mem[mem[96] + mem[64] + 64] = 0
                            emit 0xd5a827cf: mem[mem[64] len ceil32(_119) + _113 + -mem[64] + 64]
                    else:
                        _110 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_110] = return_data.size
                        mem[_110 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = return_data.size
                        mem[mem[64] + 64 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_110 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + mem[64] + 64] = 0
                        emit 0xd5a827cf: Array(len=return_data.size, data=mem[mem[64] + 64 len ceil32(return_data.size)])
                else:
                    if return_data.size > 35:
                        emit 0x8c3808c0: ext_call.return_data[4]
                    else:
                        if not return_data.size:
                            _132 = mem[64]
                            mem[mem[64]] = 32
                            _142 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                emit 0xd5a827cf: Array(len=mem[96], data=mem[mem[64] + 64 len ceil32(mem[96])])
                            else:
                                mem[mem[96] + mem[64] + 64] = 0
                                emit 0xd5a827cf: mem[mem[64] len ceil32(_142) + _132 + -mem[64] + 64]
                        else:
                            _125 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_125] = return_data.size
                            mem[_125 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = return_data.size
                            mem[mem[64] + 64 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_125 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + mem[64] + 64] = 0
                            emit 0xd5a827cf: Array(len=return_data.size, data=mem[mem[64] + 64 len ceil32(return_data.size)])
            else:
                if return_data.size < 68:
                    if not return_data.size:
                        _128 = mem[64]
                        mem[mem[64]] = 32
                        _140 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        if ceil32(mem[96]) <= mem[96]:
                            emit 0xd5a827cf: Array(len=mem[96], data=mem[mem[64] + 64 len ceil32(mem[96])])
                        else:
                            mem[mem[96] + mem[64] + 64] = 0
                            emit 0xd5a827cf: mem[mem[64] len ceil32(_140) + _128 + -mem[64] + 64]
                    else:
                        _122 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_122] = return_data.size
                        mem[_122 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = return_data.size
                        mem[mem[64] + 64 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_122 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                        if ceil32(return_data.size) > return_data.size:
                            mem[return_data.size + mem[64] + 64] = 0
                        emit 0xd5a827cf: Array(len=return_data.size, data=mem[mem[64] + 64 len ceil32(return_data.size)])
                else:
                    _111 = mem[64]
                    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    _112 = mem[mem[64]]
                    if mem[mem[64]] > test266151307() or mem[mem[64]] + 36 > return_data.size:
                        if not return_data.size:
                            _135 = mem[64]
                            mem[mem[64]] = 32
                            _147 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) <= mem[96]:
                                emit 0xd5a827cf: Array(len=mem[96], data=mem[mem[64] + 64 len ceil32(mem[96])])
                            else:
                                mem[mem[96] + mem[64] + 64] = 0
                                emit 0xd5a827cf: mem[mem[64] len ceil32(_147) + _135 + -mem[64] + 64]
                        else:
                            _127 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_127] = return_data.size
                            mem[_127 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = return_data.size
                            mem[mem[64] + 64 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_127 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                            if ceil32(return_data.size) > return_data.size:
                                mem[return_data.size + mem[64] + 64] = 0
                            emit 0xd5a827cf: Array(len=return_data.size, data=mem[mem[64] + 64 len ceil32(return_data.size)])
                    else:
                        if mem[mem[64] + mem[mem[64]]] > test266151307():
                            if not return_data.size:
                                _138 = mem[64]
                                mem[mem[64]] = 32
                                _153 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                if ceil32(mem[96]) <= mem[96]:
                                    emit 0xd5a827cf: Array(len=mem[96], data=mem[mem[64] + 64 len ceil32(mem[96])])
                                else:
                                    mem[mem[96] + mem[64] + 64] = 0
                                    emit 0xd5a827cf: mem[mem[64] len ceil32(_153) + _138 + -mem[64] + 64]
                            else:
                                _134 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_134] = return_data.size
                                mem[_134 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = return_data.size
                                mem[mem[64] + 64 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_134 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                if ceil32(return_data.size) > return_data.size:
                                    mem[return_data.size + mem[64] + 64] = 0
                                emit 0xd5a827cf: Array(len=return_data.size, data=mem[mem[64] + 64 len ceil32(return_data.size)])
                        else:
                            if mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 32 > return_data.size - 4:
                                if not return_data.size:
                                    _145 = mem[64]
                                    mem[mem[64]] = 32
                                    _161 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) <= mem[96]:
                                        emit 0xd5a827cf: Array(len=mem[96], data=mem[mem[64] + 64 len ceil32(mem[96])])
                                    else:
                                        mem[mem[96] + mem[64] + 64] = 0
                                        emit 0xd5a827cf: mem[mem[64] len ceil32(_161) + _145 + -mem[64] + 64]
                                else:
                                    _137 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_137] = return_data.size
                                    mem[_137 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = return_data.size
                                    mem[mem[64] + 64 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_137 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                    if ceil32(return_data.size) > return_data.size:
                                        mem[return_data.size + mem[64] + 64] = 0
                                    emit 0xd5a827cf: Array(len=return_data.size, data=mem[mem[64] + 64 len ceil32(return_data.size)])
                            else:
                                if mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1 < mem[64] or mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = mem[64] + floor32(mem[mem[64]] + mem[mem[64] + mem[mem[64]]] + 31) + 1
                                if _111 + _112:
                                    mem[mem[64]] = 32
                                    _159 = mem[_111 + _112]
                                    mem[mem[64] + 32] = mem[_111 + _112]
                                    mem[mem[64] + 64 len ceil32(_159)] = mem[_111 + _112 + 32 len ceil32(_159)]
                                    if ceil32(_159) > _159:
                                        mem[_159 + mem[64] + 64] = 0
                                    emit 0x3f0c48ab: 32, mem[mem[64] + 32 len ceil32(_159) + 32]
                                else:
                                    if not return_data.size:
                                        _167 = mem[64]
                                        mem[mem[64]] = 32
                                        _174 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) <= mem[96]:
                                            emit 0xd5a827cf: Array(len=mem[96], data=mem[mem[64] + 64 len ceil32(mem[96])])
                                        else:
                                            mem[mem[96] + mem[64] + 64] = 0
                                            emit 0xd5a827cf: mem[mem[64] len ceil32(_174) + _167 + -mem[64] + 64]
                                    else:
                                        _160 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_160] = return_data.size
                                        mem[_160 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[mem[64]] = 32
                                        mem[mem[64] + 32] = return_data.size
                                        mem[mem[64] + 64 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[_160 + return_data.size + 32 len ceil32(return_data.size) - return_data.size]
                                        if ceil32(return_data.size) > return_data.size:
                                            mem[return_data.size + mem[64] + 64] = 0
                                        emit 0xd5a827cf: Array(len=return_data.size, data=mem[mem[64] + 64 len ceil32(return_data.size)])
}



}
