contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint64 stor2;
uint256 stor2; offset 64
uint256 stor2;
array of uint256 stor3;

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

function emergencyWithdraw(address arg1, uint256 arg2) payable {
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Not enough tokens'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function transit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= 0:
        revert with 0, 'amount must be greater than 0'
    if uint256(stor2.field_0) == -1:
        revert with 'NH{q', 17
    uint256(stor2.field_0)++
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor3.length):
            mem[128] = Mask(248, 8, stor3.length)
            mem[stor3.length.field_1 + 128] = address(arg1)
            mem[stor3.length.field_1 + 148] = arg2
            mem[stor3.length.field_1 + 364 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, mem[stor3.length.field_1 + 364 len 28]
            call arg1.mem[stor3.length.field_1 + 364 len 4] with:
                 gas gas_remaining wei
                args mem[stor3.length.field_1 + 368 len 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'transferFrom failed'
                if stor3.length.field_1 + 104:
                    require stor3.length.field_1 + 104 >= 32
                    require Mask(248, 8, stor3.length) == bool(Mask(248, 8, stor3.length))
                    if not Mask(248, 8, stor3.length):
                        revert with 0, 'transferFrom failed'
            else:
                mem[stor3.length.field_1 + 396 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'transferFrom failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[stor3.length.field_1 + 396] == bool(mem[stor3.length.field_1 + 396])
                    if not mem[stor3.length.field_1 + 396]:
                        revert with 0, 'transferFrom failed'
            emit 0xdd46ab56: arg2, sha3(Mask(248, 8, stor3.length), mem[160 len stor3.length.field_1 + 20], msg.sender, uint256(stor2.field_0)), uint256(stor2.field_0), arg1, msg.sender
        else:
            if bool(stor3.length) == 1:
                idx = 0
                s = 0
                while idx < stor3.length.field_1:
                    mem[idx + 128] = stor3[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[stor3.length.field_1 + 128] = address(arg1)
                mem[stor3.length.field_1 + 148] = arg2
                mem[stor3.length.field_1 + 364 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, mem[stor3.length.field_1 + 364 len 28]
                call arg1.mem[stor3.length.field_1 + 364 len 4] with:
                     gas gas_remaining wei
                    args mem[stor3.length.field_1 + 368 len 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'transferFrom failed'
                    if stor3.length.field_1 + 104:
                        require stor3.length.field_1 + 104 >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'transferFrom failed'
                else:
                    mem[stor3.length.field_1 + 396 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'transferFrom failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[stor3.length.field_1 + 396] == bool(mem[stor3.length.field_1 + 396])
                        if not mem[stor3.length.field_1 + 396]:
                            revert with 0, 'transferFrom failed'
                emit 0xdd46ab56: arg2, sha3(mem[128 len stor3.length.field_1 + 20], arg2, msg.sender, uint256(stor2.field_0)), uint256(stor2.field_0), arg1, msg.sender
            else:
                mem[0] = address(arg1)
                mem[20] = arg2
                mem[52] = address(msg.sender)
                mem[72] = uint256(stor2.field_0)
                mem[uint64(msg.sender), Mask(192, 0, stor2.field_64)] = -uint64(msg.sender), Mask(192, 0, stor2.field_64) + 72
                mem[64] = 104
                _11 = sha3(mem[uint64(msg.sender), Mask(192, 0, stor2.field_64) + 32 len -uint64(msg.sender), Mask(192, 0, stor2.field_64) + 72])
                mem[236 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, mem[236 len 28]
                call arg1.mem[236 len 4] with:
                     gas gas_remaining wei
                    args mem[240 len 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'transferFrom failed'
                    if uint64(stor2.field_0), 0:
                        require uint64(stor2.field_0), 0 >= 32
                        require 100, unknown_0x23b872dd(?????), Mask(160, 96, msg.sender) >> 96 == bool(100, unknown_0x23b872dd(?????), Mask(160, 96, msg.sender) >> 96)
                        if not 100, unknown_0x23b872dd(?????), Mask(160, 96, msg.sender) >> 96:
                            revert with 0, 'transferFrom failed'
                else:
                    mem[268 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'transferFrom failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[268] == bool(mem[268])
                        if not mem[268]:
                            revert with 0, 'transferFrom failed'
                emit 0xdd46ab56: arg2, _11, uint256(stor2.field_0), arg1, msg.sender
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor3.length):
            mem[128] = Mask(248, 8, stor3.length)
            mem[stor3.length.field_1 + 128] = address(arg1)
            mem[stor3.length.field_1 + 148] = arg2
            mem[stor3.length.field_1 + 364 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, mem[stor3.length.field_1 + 364 len 28]
            call arg1.mem[stor3.length.field_1 + 364 len 4] with:
                 gas gas_remaining wei
                args mem[stor3.length.field_1 + 368 len 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'transferFrom failed'
                if stor3.length.field_1 + 104:
                    require stor3.length.field_1 + 104 >= 32
                    require Mask(248, 8, stor3.length) == bool(Mask(248, 8, stor3.length))
                    if not Mask(248, 8, stor3.length):
                        revert with 0, 'transferFrom failed'
            else:
                mem[stor3.length.field_1 + 396 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'transferFrom failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[stor3.length.field_1 + 396] == bool(mem[stor3.length.field_1 + 396])
                    if not mem[stor3.length.field_1 + 396]:
                        revert with 0, 'transferFrom failed'
            emit 0xdd46ab56: arg2, sha3(Mask(248, 8, stor3.length), mem[160 len stor3.length.field_1 + 20], msg.sender, uint256(stor2.field_0)), uint256(stor2.field_0), arg1, msg.sender
        else:
            if bool(stor3.length) == 1:
                idx = 0
                s = 0
                while idx < stor3.length.field_1:
                    mem[idx + 128] = stor3[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[stor3.length.field_1 + 128] = address(arg1)
                mem[stor3.length.field_1 + 148] = arg2
                mem[stor3.length.field_1 + 364 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, mem[stor3.length.field_1 + 364 len 28]
                call arg1.mem[stor3.length.field_1 + 364 len 4] with:
                     gas gas_remaining wei
                    args mem[stor3.length.field_1 + 368 len 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'transferFrom failed'
                    if stor3.length.field_1 + 104:
                        require stor3.length.field_1 + 104 >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'transferFrom failed'
                else:
                    mem[stor3.length.field_1 + 396 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'transferFrom failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[stor3.length.field_1 + 396] == bool(mem[stor3.length.field_1 + 396])
                        if not mem[stor3.length.field_1 + 396]:
                            revert with 0, 'transferFrom failed'
                emit 0xdd46ab56: arg2, sha3(mem[128 len stor3.length.field_1 + 20], arg2, msg.sender, uint256(stor2.field_0)), uint256(stor2.field_0), arg1, msg.sender
            else:
                mem[0] = address(arg1)
                mem[20] = arg2
                mem[52] = address(msg.sender)
                mem[72] = uint256(stor2.field_0)
                mem[uint64(msg.sender), Mask(192, 0, stor2.field_64)] = -uint64(msg.sender), Mask(192, 0, stor2.field_64) + 72
                mem[64] = 104
                _18 = sha3(mem[uint64(msg.sender), Mask(192, 0, stor2.field_64) + 32 len -uint64(msg.sender), Mask(192, 0, stor2.field_64) + 72])
                mem[236 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, mem[236 len 28]
                call arg1.mem[236 len 4] with:
                     gas gas_remaining wei
                    args mem[240 len 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'transferFrom failed'
                    if uint64(stor2.field_0), 0:
                        require uint64(stor2.field_0), 0 >= 32
                        require 100, unknown_0x23b872dd(?????), Mask(160, 96, msg.sender) >> 96 == bool(100, unknown_0x23b872dd(?????), Mask(160, 96, msg.sender) >> 96)
                        if not 100, unknown_0x23b872dd(?????), Mask(160, 96, msg.sender) >> 96:
                            revert with 0, 'transferFrom failed'
                else:
                    mem[268 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'transferFrom failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[268] == bool(mem[268])
                        if not mem[268]:
                            revert with 0, 'transferFrom failed'
                emit 0xdd46ab56: arg2, _18, uint256(stor2.field_0), arg1, msg.sender
}

function sub_0bd0ca9a(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if stor1[arg3]:
        revert with 0, 'already withdraw'
    if arg2 <= 0:
        revert with 0, 'amount must be greater than 0'
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor3.length):
            mem[128] = Mask(248, 8, stor3.length)
            mem[stor3.length.field_1 + 128] = address(arg1)
            mem[stor3.length.field_1 + 148] = arg2
            mem[stor3.length.field_1 + 356 len arg4.length] = arg4[all]
            mem[stor3.length.field_1 + arg4.length + 356] = 0
            if arg4.length == 65:
                if mem[stor3.length.field_1 + 388] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if arg4.length != 64:
                revert with 0, 'ECDSA: invalid signature length'
            if uint255(mem[stor3.length.field_1 + 388]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if uint8((bool(mem[stor3.length.field_1 + 388]) >> 255) + 27) != 27:
                if uint8((bool(mem[stor3.length.field_1 + 388]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Mask(248, 8, stor3.length), mem[160 len stor3.length.field_1 + 20], msg.sender, arg3)), (bool(mem[stor3.length.field_1 + 388]) >> 255) + 27 << 248, mem[stor3.length.field_1 + 356], uint255(mem[stor3.length.field_1 + 388])) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            if address(signer) != msg.sender:
                revert with 0, 'invalid signature'
            mem[stor3.length.field_1 + ceil32(arg4.length) + 488 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 2 * Mask(223, 0, mem[stor3.length.field_1 + 388])
            call address(arg1) with:
               funct Mask(32, 1, unknown_0xa9059cbb(?????), msg.sender, arg2) >> 1
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 2 * Mask(223, 0, mem[stor3.length.field_1 + 388])) << 288)
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'safeTransfer failed'
                if stor3.length.field_1 + 104:
                    require stor3.length.field_1 + 104 >= 32
                    require Mask(248, 8, stor3.length) == bool(Mask(248, 8, stor3.length))
                    if not Mask(248, 8, stor3.length):
                        revert with 0, 'safeTransfer failed'
            else:
                mem[stor3.length.field_1 + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'safeTransfer failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[stor3.length.field_1 + ceil32(arg4.length) + 520] == bool(mem[stor3.length.field_1 + ceil32(arg4.length) + 520])
                    if not mem[stor3.length.field_1 + ceil32(arg4.length) + 520]:
                        revert with 0, 'safeTransfer failed'
        else:
            if bool(stor3.length) == 1:
                idx = 0
                s = 0
                while idx < stor3.length.field_1:
                    mem[idx + 128] = stor3[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[stor3.length.field_1 + 128] = address(arg1)
                mem[stor3.length.field_1 + 148] = arg2
                mem[stor3.length.field_1 + 356 len arg4.length] = arg4[all]
                mem[stor3.length.field_1 + arg4.length + 356] = 0
                if arg4.length == 65:
                    if mem[stor3.length.field_1 + 388] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                if arg4.length != 64:
                    revert with 0, 'ECDSA: invalid signature length'
                if uint255(mem[stor3.length.field_1 + 388]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                if uint8((bool(mem[stor3.length.field_1 + 388]) >> 255) + 27) != 27:
                    if uint8((bool(mem[stor3.length.field_1 + 388]) >> 255) + 27) != 28:
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[128 len stor3.length.field_1 + 20], arg2, msg.sender, arg3)), (bool(mem[stor3.length.field_1 + 388]) >> 255) + 27 << 248, mem[stor3.length.field_1 + 356], uint255(mem[stor3.length.field_1 + 388])) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(signer):
                    revert with 0, 'ECDSA: invalid signature'
                if address(signer) != msg.sender:
                    revert with 0, 'invalid signature'
                mem[stor3.length.field_1 + ceil32(arg4.length) + 488 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 2 * Mask(223, 0, mem[stor3.length.field_1 + 388])
                call address(arg1) with:
                   funct Mask(32, 1, unknown_0xa9059cbb(?????), msg.sender, arg2) >> 1
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 2 * Mask(223, 0, mem[stor3.length.field_1 + 388])) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'safeTransfer failed'
                    if stor3.length.field_1 + 104:
                        require stor3.length.field_1 + 104 >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'safeTransfer failed'
                else:
                    mem[stor3.length.field_1 + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'safeTransfer failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[stor3.length.field_1 + ceil32(arg4.length) + 520] == bool(mem[stor3.length.field_1 + ceil32(arg4.length) + 520])
                        if not mem[stor3.length.field_1 + ceil32(arg4.length) + 520]:
                            revert with 0, 'safeTransfer failed'
            else:
                mem[0] = address(arg1)
                mem[20] = arg2
                mem[52] = address(msg.sender)
                mem[72] = arg3
                mem[uint64(msg.sender), Mask(192, 64, arg3) >> 64] = -uint64(msg.sender), Mask(192, 64, arg3) >> 64 + 72
                mem[64] = 104
                _14 = sha3(mem[uint64(msg.sender), Mask(192, 64, arg3) >> 64 + 32 len -uint64(msg.sender), Mask(192, 64, arg3) >> 64 + 72])
                mem[228 len arg4.length] = arg4[all]
                mem[arg4.length + 228] = 0
                if arg4.length == 65:
                    if mem[260] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                if arg4.length != 64:
                    revert with 0, 'ECDSA: invalid signature length'
                if uint255(mem[260]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                if uint8((bool(mem[260]) >> 255) + 27) != 27:
                    if uint8((bool(mem[260]) >> 255) + 27) != 28:
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _14), (bool(mem[260]) >> 255) + 27 << 248, mem[228], uint255(mem[260])) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(signer):
                    revert with 0, 'ECDSA: invalid signature'
                if address(signer) != msg.sender:
                    revert with 0, 'invalid signature'
                mem[ceil32(arg4.length) + 360 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 2 * Mask(223, 0, mem[260])
                call address(arg1) with:
                   funct Mask(32, 1, unknown_0xa9059cbb(?????), msg.sender, arg2) >> 1
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 2 * Mask(223, 0, mem[260])) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'safeTransfer failed'
                    if uint64(arg3), 0:
                        require uint64(arg3), 0 >= 32
                        require 60, Mask(192, 64, '\x19Ethereum Signed Message:\n32') >> 64 == bool(60, Mask(192, 64, '\x19Ethereum Signed Message:\n32') >> 64)
                        if not 60, Mask(192, 64, '\x19Ethereum Signed Message:\n32') >> 64:
                            revert with 0, 'safeTransfer failed'
                else:
                    mem[ceil32(arg4.length) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'safeTransfer failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(arg4.length) + 392] == bool(mem[ceil32(arg4.length) + 392])
                        if not mem[ceil32(arg4.length) + 392]:
                            revert with 0, 'safeTransfer failed'
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor3.length):
            mem[128] = Mask(248, 8, stor3.length)
            mem[stor3.length.field_1 + 128] = address(arg1)
            mem[stor3.length.field_1 + 148] = arg2
            mem[stor3.length.field_1 + 356 len arg4.length] = arg4[all]
            mem[stor3.length.field_1 + arg4.length + 356] = 0
            if arg4.length == 65:
                if mem[stor3.length.field_1 + 388] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if arg4.length != 64:
                revert with 0, 'ECDSA: invalid signature length'
            if uint255(mem[stor3.length.field_1 + 388]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if uint8((bool(mem[stor3.length.field_1 + 388]) >> 255) + 27) != 27:
                if uint8((bool(mem[stor3.length.field_1 + 388]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Mask(248, 8, stor3.length), mem[160 len stor3.length.field_1 + 20], msg.sender, arg3)), (bool(mem[stor3.length.field_1 + 388]) >> 255) + 27 << 248, mem[stor3.length.field_1 + 356], uint255(mem[stor3.length.field_1 + 388])) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            if address(signer) != msg.sender:
                revert with 0, 'invalid signature'
            mem[stor3.length.field_1 + ceil32(arg4.length) + 488 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 2 * Mask(223, 0, mem[stor3.length.field_1 + 388])
            call address(arg1) with:
               funct Mask(32, 1, unknown_0xa9059cbb(?????), msg.sender, arg2) >> 1
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 2 * Mask(223, 0, mem[stor3.length.field_1 + 388])) << 288)
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'safeTransfer failed'
                if stor3.length.field_1 + 104:
                    require stor3.length.field_1 + 104 >= 32
                    require Mask(248, 8, stor3.length) == bool(Mask(248, 8, stor3.length))
                    if not Mask(248, 8, stor3.length):
                        revert with 0, 'safeTransfer failed'
            else:
                mem[stor3.length.field_1 + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'safeTransfer failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[stor3.length.field_1 + ceil32(arg4.length) + 520] == bool(mem[stor3.length.field_1 + ceil32(arg4.length) + 520])
                    if not mem[stor3.length.field_1 + ceil32(arg4.length) + 520]:
                        revert with 0, 'safeTransfer failed'
        else:
            if bool(stor3.length) == 1:
                idx = 0
                s = 0
                while idx < stor3.length.field_1:
                    mem[idx + 128] = stor3[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[stor3.length.field_1 + 128] = address(arg1)
                mem[stor3.length.field_1 + 148] = arg2
                mem[stor3.length.field_1 + 356 len arg4.length] = arg4[all]
                mem[stor3.length.field_1 + arg4.length + 356] = 0
                if arg4.length == 65:
                    if mem[stor3.length.field_1 + 388] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                if arg4.length != 64:
                    revert with 0, 'ECDSA: invalid signature length'
                if uint255(mem[stor3.length.field_1 + 388]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                if uint8((bool(mem[stor3.length.field_1 + 388]) >> 255) + 27) != 27:
                    if uint8((bool(mem[stor3.length.field_1 + 388]) >> 255) + 27) != 28:
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[128 len stor3.length.field_1 + 20], arg2, msg.sender, arg3)), (bool(mem[stor3.length.field_1 + 388]) >> 255) + 27 << 248, mem[stor3.length.field_1 + 356], uint255(mem[stor3.length.field_1 + 388])) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(signer):
                    revert with 0, 'ECDSA: invalid signature'
                if address(signer) != msg.sender:
                    revert with 0, 'invalid signature'
                mem[stor3.length.field_1 + ceil32(arg4.length) + 488 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 2 * Mask(223, 0, mem[stor3.length.field_1 + 388])
                call address(arg1) with:
                   funct Mask(32, 1, unknown_0xa9059cbb(?????), msg.sender, arg2) >> 1
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 2 * Mask(223, 0, mem[stor3.length.field_1 + 388])) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'safeTransfer failed'
                    if stor3.length.field_1 + 104:
                        require stor3.length.field_1 + 104 >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'safeTransfer failed'
                else:
                    mem[stor3.length.field_1 + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'safeTransfer failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[stor3.length.field_1 + ceil32(arg4.length) + 520] == bool(mem[stor3.length.field_1 + ceil32(arg4.length) + 520])
                        if not mem[stor3.length.field_1 + ceil32(arg4.length) + 520]:
                            revert with 0, 'safeTransfer failed'
            else:
                mem[0] = address(arg1)
                mem[20] = arg2
                mem[52] = address(msg.sender)
                mem[72] = arg3
                mem[uint64(msg.sender), Mask(192, 64, arg3) >> 64] = -uint64(msg.sender), Mask(192, 64, arg3) >> 64 + 72
                mem[64] = 104
                _20 = sha3(mem[uint64(msg.sender), Mask(192, 64, arg3) >> 64 + 32 len -uint64(msg.sender), Mask(192, 64, arg3) >> 64 + 72])
                mem[228 len arg4.length] = arg4[all]
                mem[arg4.length + 228] = 0
                if arg4.length == 65:
                    if mem[260] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                if arg4.length != 64:
                    revert with 0, 'ECDSA: invalid signature length'
                if uint255(mem[260]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                if uint8((bool(mem[260]) >> 255) + 27) != 27:
                    if uint8((bool(mem[260]) >> 255) + 27) != 28:
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _20), (bool(mem[260]) >> 255) + 27 << 248, mem[228], uint255(mem[260])) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if not address(signer):
                    revert with 0, 'ECDSA: invalid signature'
                if address(signer) != msg.sender:
                    revert with 0, 'invalid signature'
                mem[ceil32(arg4.length) + 360 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 2 * Mask(223, 0, mem[260])
                call address(arg1) with:
                   funct Mask(32, 1, unknown_0xa9059cbb(?????), msg.sender, arg2) >> 1
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 2 * Mask(223, 0, mem[260])) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'safeTransfer failed'
                    if uint64(arg3), 0:
                        require uint64(arg3), 0 >= 32
                        require 60, Mask(192, 64, '\x19Ethereum Signed Message:\n32') >> 64 == bool(60, Mask(192, 64, '\x19Ethereum Signed Message:\n32') >> 64)
                        if not 60, Mask(192, 64, '\x19Ethereum Signed Message:\n32') >> 64:
                            revert with 0, 'safeTransfer failed'
                else:
                    mem[ceil32(arg4.length) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'safeTransfer failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(arg4.length) + 392] == bool(mem[ceil32(arg4.length) + 392])
                        if not mem[ceil32(arg4.length) + 392]:
                            revert with 0, 'safeTransfer failed'
    stor1[arg3] = 1
    emit Withdraw(arg2, arg3, address(arg1), msg.sender);
}



}
