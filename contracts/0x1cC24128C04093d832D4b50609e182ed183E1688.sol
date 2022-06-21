contract main {




// =====================  Runtime code  =====================


#
#  - sub_2a75f138(?)
#  - sub_90e704e5(?)
#
const sub_8efb3bb2(?) = 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a1

const Q = 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141


uint8 stor0;
uint256 sub_de1ab9a0;
uint8 sub_16b47ef7;
uint256 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;

function sub_16b47ef7(?) {
    return sub_16b47ef7
}

function sub_46b31b6e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function paused() {
    return bool(stor0)
}

function sub_de1ab9a0(?) {
    return sub_de1ab9a0
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x4e2312e000000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function verifySignature(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if arg3 >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'signature must be reduced modulo Q'
    if not arg5:
        revert with 0, 'no zero inputs allowed'
    if arg1 <= 0:
        revert with 0, 'no zero inputs allowed'
    if arg3 <= 0:
        revert with 0, 'no zero inputs allowed'
    if arg4 <= 0:
        revert with 0, 'no zero inputs allowed'
    if 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141 < mulmod(arg1, arg3, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141):
        revert with 'NH{q', 17
    if not arg2:
        signer = erecover(-mulmod(arg1, arg3, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 27, arg1, mulmod(sha3(arg1, arg2, arg4, arg5), arg1, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    else:
        signer = erecover(-mulmod(arg1, arg3, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 28, arg1, mulmod(sha3(arg1, arg2, arg4, arg5), arg1, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (arg5 == address(signer))
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = arg3 + 36
    s = 128
    while idx < arg3 + (32 * arg3.length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + 98 > test266151307() or floor32(arg4.length) + 98 < 97:
        revert with 'NH{q', 65
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = arg4 + 36
    s = floor32(arg3.length) + 129
    while idx < arg4 + (32 * arg4.length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307() or ceil32(ceil32(arg5.length)) + 99 < 98:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_69fb99a5(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor7[arg1]:
        revert with 0, 'duplicate action!'
    stor7[arg1] = 1
    if arg2 >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
        revert with 0, 'signature must be reduced modulo Q'
    if not address(arg3):
        revert with 0, 'no zero inputs allowed'
    if sub_de1ab9a0 <= 0:
        revert with 0, 'no zero inputs allowed'
    if arg2 <= 0:
        revert with 0, 'no zero inputs allowed'
    if sha3('PauseAction', chainid, address(this.address), arg1) <= 0:
        revert with 0, 'no zero inputs allowed'
    if 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141 < mulmod(sub_de1ab9a0, arg2, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141):
        revert with 'NH{q', 17
    if not sub_16b47ef7:
        signer = erecover(-mulmod(sub_de1ab9a0, arg2, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 27, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3('PauseAction', chainid, address(this.address), arg1), address(arg3)), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    else:
        signer = erecover(-mulmod(sub_de1ab9a0, arg2, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 28, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3('PauseAction', chainid, address(this.address), arg1), address(arg3)), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(arg3) != address(signer):
        revert with 0, 'failed to verify signature!'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function sub_12fd8885(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    if not stor0:
        revert with 0, 'Pausable: not paused'
    if stor7[arg1]:
        revert with 0, 'duplicate action!'
    stor7[arg1] = 1
    if arg2 >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
        revert with 0, 'signature must be reduced modulo Q'
    if not address(arg3):
        revert with 0, 'no zero inputs allowed'
    if sub_de1ab9a0 <= 0:
        revert with 0, 'no zero inputs allowed'
    if arg2 <= 0:
        revert with 0, 'no zero inputs allowed'
    if sha3('UnpauseAction', chainid, address(this.address), arg1) <= 0:
        revert with 0, 'no zero inputs allowed'
    if 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141 < mulmod(sub_de1ab9a0, arg2, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141):
        revert with 'NH{q', 17
    if not sub_16b47ef7:
        signer = erecover(-mulmod(sub_de1ab9a0, arg2, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 27, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3('UnpauseAction', chainid, address(this.address), arg1), address(arg3)), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    else:
        signer = erecover(-mulmod(sub_de1ab9a0, arg2, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 28, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3('UnpauseAction', chainid, address(this.address), arg1), address(arg3)), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(arg3) != address(signer):
        revert with 0, 'failed to verify signature!'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function sub_8b4e54aa(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor5[address(arg2)]:
        revert with 0, 'NFT already whitelisted'
    if stor7[arg1]:
        revert with 0, 'duplicate action!'
    stor7[arg1] = 1
    if arg3 >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
        revert with 0, 'signature must be reduced modulo Q'
    if not address(arg4):
        revert with 0, 'no zero inputs allowed'
    if sub_de1ab9a0 <= 0:
        revert with 0, 'no zero inputs allowed'
    if arg3 <= 0:
        revert with 0, 'no zero inputs allowed'
    if sha3('WhitelistNftAction', chainid, address(this.address), arg1, address(arg2)) <= 0:
        revert with 0, 'no zero inputs allowed'
    if 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141 < mulmod(sub_de1ab9a0, arg3, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141):
        revert with 'NH{q', 17
    if not sub_16b47ef7:
        signer = erecover(-mulmod(sub_de1ab9a0, arg3, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 27, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3('WhitelistNftAction', chainid, address(this.address), arg1, address(arg2)), address(arg4)), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    else:
        signer = erecover(-mulmod(sub_de1ab9a0, arg3, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 28, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3('WhitelistNftAction', chainid, address(this.address), arg1, address(arg2)), address(arg4)), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(arg4) != address(signer):
        revert with 0, 'failed to verify signature!'
    stor5[address(arg2)] = 0
}

function sub_15fdf194(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    if not address(arg2):
        revert with 0, 'shouldn't send to null address!'
    if stor7[arg1]:
        revert with 0, 'duplicate action!'
    stor7[arg1] = 1
    if arg3 >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
        revert with 0, 'signature must be reduced modulo Q'
    if not address(arg4):
        revert with 0, 'no zero inputs allowed'
    if sub_de1ab9a0 <= 0:
        revert with 0, 'no zero inputs allowed'
    if arg3 <= 0:
        revert with 0, 'no zero inputs allowed'
    if sha3('TransferFeesAction', chainid, address(this.address), arg1, address(arg2)) <= 0:
        revert with 0, 'no zero inputs allowed'
    if 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141 < mulmod(sub_de1ab9a0, arg3, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141):
        revert with 'NH{q', 17
    if not sub_16b47ef7:
        signer = erecover(-mulmod(sub_de1ab9a0, arg3, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 27, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3('TransferFeesAction', chainid, address(this.address), arg1, address(arg2)), address(arg4)), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    else:
        signer = erecover(-mulmod(sub_de1ab9a0, arg3, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 28, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3('TransferFeesAction', chainid, address(this.address), arg1, address(arg2)), address(arg4)), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(arg4) != address(signer):
        revert with 0, 'failed to verify signature!'
    stor4 = 0
    call address(arg2) with:
       value stor4 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_94dc2ed8(?) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == arg5
    require arg6 == address(arg6)
    if stor0:
        revert with 0, 'Pausable: paused'
    if not stor5[address(arg4)]:
        revert with 0, 'NFT not whitelisted?!'
    if stor6[arg1]:
        revert with 0, 'duplicate action!'
    stor6[arg1] = 1
    if arg5 >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
        revert with 0, 'signature must be reduced modulo Q'
    if not address(arg6):
        revert with 0, 'no zero inputs allowed'
    if sub_de1ab9a0 <= 0:
        revert with 0, 'no zero inputs allowed'
    if arg5 <= 0:
        revert with 0, 'no zero inputs allowed'
    if sha3('UnfreezeErc721Action', chainid, address(this.address), arg1, address(arg2), arg3, address(arg4)) <= 0:
        revert with 0, 'no zero inputs allowed'
    if 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141 < mulmod(sub_de1ab9a0, arg5, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141):
        revert with 'NH{q', 17
    if not sub_16b47ef7:
        signer = erecover(-mulmod(sub_de1ab9a0, arg5, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 27, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3('UnfreezeErc721Action', chainid, address(this.address), arg1, address(arg2), arg3, address(arg4)), address(arg6)), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    else:
        signer = erecover(-mulmod(sub_de1ab9a0, arg5, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 28, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3('UnfreezeErc721Action', chainid, address(this.address), arg1, address(arg2), arg3, address(arg4)), address(arg6)), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(arg6) != address(signer):
        revert with 0, 'failed to verify signature!'
    require ext_code.size(address(arg4))
    call address(arg4).0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7629c3fc(?) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == arg5
    require arg6 == address(arg6)
    if stor0:
        revert with 0, 'Pausable: paused'
    if not stor5[address(arg4)]:
        revert with 0, 'NFT not whitelisted?!'
    if stor6[arg1]:
        revert with 0, 'duplicate action!'
    stor6[arg1] = 1
    if arg5 >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
        revert with 0, 'signature must be reduced modulo Q'
    if not address(arg6):
        revert with 0, 'no zero inputs allowed'
    if sub_de1ab9a0 <= 0:
        revert with 0, 'no zero inputs allowed'
    if arg5 <= 0:
        revert with 0, 'no zero inputs allowed'
    if sha3('UnfreezeErc1155Action', chainid, address(this.address), arg1, address(arg2), arg3, address(arg4)) <= 0:
        revert with 0, 'no zero inputs allowed'
    if 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141 < mulmod(sub_de1ab9a0, arg5, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141):
        revert with 'NH{q', 17
    if not sub_16b47ef7:
        signer = erecover(-mulmod(sub_de1ab9a0, arg5, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 27, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3('UnfreezeErc1155Action', chainid, address(this.address), arg1, address(arg2), arg3, address(arg4)), address(arg6)), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    else:
        signer = erecover(-mulmod(sub_de1ab9a0, arg5, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 28, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3('UnfreezeErc1155Action', chainid, address(this.address), arg1, address(arg2), arg3, address(arg4)), address(arg6)), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(arg6) != address(signer):
        revert with 0, 'failed to verify signature!'
    require ext_code.size(address(arg4))
    call address(arg4).0xf242432a with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3, 1, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_040833bd(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == uint64(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    if msg.value <= 0:
        revert with 0, 'Tx Fees is required!'
    if stor0:
        revert with 0, 'Pausable: paused'
    if uint256(stor3.field_0) > -2:
        revert with 'NH{q', 17
    uint256(stor3.field_0)++
    if stor4 > -msg.value - 1:
        revert with 'NH{q', 17
    stor4 += msg.value
    mem[96] = 0x6c0360eb00000000000000000000000000000000000000000000000000000000
    call address(arg4).0x6c0360eb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _9 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _9
    require _8 + _9 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_9)] = mem[_8 + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[ceil32(return_data.size) + _9 + 128] = 0
    mem[mem[64]] = uint256(stor3.field_0)
    mem[mem[64] + 32] = uint64(arg2)
    mem[mem[64] + 64] = msg.value
    mem[mem[64] + 96] = 192
    mem[mem[64] + 192] = arg1.length
    mem[mem[64] + 224 len arg1.length] = arg1[all]
    mem[mem[64] + arg1.length + 224] = 0
    mem[mem[64] + 128] = arg3
    mem[mem[64] + 160] = ceil32(arg1.length) + 224
    mem[mem[64] + ceil32(arg1.length) + 224] = _9
    mem[mem[64] + ceil32(arg1.length) + 256 len ceil32(_9)] = mem[ceil32(return_data.size) + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[mem[64] + ceil32(arg1.length) + _9 + 256] = 0
    emit 0xac2c61ef: uint256(stor3.field_0), arg2 << 192, msg.value, 192, arg3, ceil32(arg1.length) + 224, arg1.length, arg1[all], 0, mem[mem[64] + arg1.length + 256 len ceil32(arg1.length) + ceil32(_9) - arg1.length]
    require ext_code.size(address(arg4))
    call address(arg4).0x1dd319cb with:
         gas gas_remaining wei
        args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1a44a628(?) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    require arg6 == arg6
    require arg7 == address(arg7)
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor6[arg1]:
        revert with 0, 'duplicate action!'
    stor6[arg1] = 1
    if arg6 >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
        revert with 0, 'signature must be reduced modulo Q'
    if not address(arg7):
        revert with 0, 'no zero inputs allowed'
    if sub_de1ab9a0 <= 0:
        revert with 0, 'no zero inputs allowed'
    if arg6 <= 0:
        revert with 0, 'no zero inputs allowed'
    if sha3('TransferNftAction', chainid, address(this.address), arg1, address(arg2), arg3, address(arg4) >> 1280, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 192) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256) << (8 * arg5.length) - 256) <= 0:
        revert with 0, 'no zero inputs allowed'
    if 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141 < mulmod(sub_de1ab9a0, arg6, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141):
        revert with 'NH{q', 17
    if not sub_16b47ef7:
        signer = erecover(-mulmod(sub_de1ab9a0, arg6, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 27, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3('TransferNftAction', chainid, address(this.address), arg1, address(arg2), arg3, address(arg4) >> 1280, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 192) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256) << (8 * arg5.length) - 256), address(arg7)), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    else:
        signer = erecover(-mulmod(sub_de1ab9a0, arg6, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 28, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3('TransferNftAction', chainid, address(this.address), arg1, address(arg2), arg3, address(arg4) >> 1280, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 192) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256) << (8 * arg5.length) - 256), address(arg7)), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(arg7) != address(signer):
        revert with 0, 'failed to verify signature!'
    require ext_code.size(address(arg4))
    call address(arg4).0x94d008ef with:
         gas gas_remaining wei
        args address(arg2), arg3, Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ac7a67bc(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] == uint64(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = 128
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98 > test266151307() or floor32(('cd', 100).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = floor32(('cd', 68).length) + 129
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[132] == address(cd[132])
    if msg.value <= 0:
        revert with 0, 'Tx Fees is required!'
    if stor0:
        revert with 0, 'Pausable: paused'
    if uint256(stor3.field_0) > -2:
        revert with 'NH{q', 17
    uint256(stor3.field_0)++
    if stor4 > -msg.value - 1:
        revert with 'NH{q', 17
    stor4 += msg.value
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] = 0x6c0360eb00000000000000000000000000000000000000000000000000000000
    call address(cd[132]).0x6c0360eb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    _109 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
    require mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] <= test266151307()
    require floor32(('cd', 68).length) + floor32(('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 129 < floor32(('cd', 68).length) + floor32(('cd', 100).length) + return_data.size + 98
    _110 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 98]
    if mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 98] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + ceil32(ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 98])) + 99 > test266151307() or ceil32(ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 98])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + ceil32(ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 98])) + 99
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 98] = _110
    require _109 + _110 + 32 <= return_data.size
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 130 len ceil32(_110)] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + _109 + 130 len ceil32(_110)]
    if ceil32(_110) > _110:
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + _110 + 130] = 0
    mem[mem[64]] = uint256(stor3.field_0)
    mem[mem[64] + 32] = uint64(cd[36])
    mem[mem[64] + 64] = msg.value
    mem[mem[64] + 96] = 192
    mem[mem[64] + 192] = ('cd', 4).length
    mem[mem[64] + 224 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[mem[64] + ('cd', 4).length + 224] = 0
    mem[mem[64] + 128] = ceil32(('cd', 4).length) + 224
    mem[mem[64] + ceil32(('cd', 4).length) + 224] = ('cd', 68).length
    mem[mem[64] + ceil32(('cd', 4).length) + 256 len 32 * ('cd', 68).length] = mem[128 len 32 * ('cd', 68).length]
    mem[mem[64] + 160] = ceil32(('cd', 4).length) + (32 * ('cd', 68).length) + 256
    mem[mem[64] + ceil32(('cd', 4).length) + (32 * ('cd', 68).length) + 256] = _110
    mem[mem[64] + ceil32(('cd', 4).length) + (32 * ('cd', 68).length) + 288 len ceil32(_110)] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(return_data.size) + 130 len ceil32(_110)]
    if ceil32(_110) > _110:
        mem[mem[64] + ceil32(('cd', 4).length) + (32 * ('cd', 68).length) + _110 + 288] = 0
    emit 0xba6092ff: uint256(stor3.field_0), cd[36] << 192, msg.value, 192, ceil32(('cd', 4).length) + 224, ceil32(('cd', 4).length) + (32 * ('cd', 68).length) + 256, ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], 0, mem[mem[64] + ('cd', 4).length + 256 len ceil32(('cd', 4).length) + (32 * ('cd', 68).length) + ceil32(_110) + -('cd', 4).length + 32]
    mem[mem[64]] = 0x885c2f3500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = 96
    mem[mem[64] + 100] = ('cd', 68).length
    mem[mem[64] + 132 len 32 * ('cd', 68).length] = mem[128 len 32 * ('cd', 68).length]
    mem[mem[64] + 68] = (32 * ('cd', 68).length) + 128
    mem[mem[64] + (32 * ('cd', 68).length) + 132] = ('cd', 100).length
    mem[mem[64] + (32 * ('cd', 68).length) + 164 len 32 * ('cd', 100).length] = mem[floor32(('cd', 68).length) + 129 len 32 * ('cd', 100).length]
    require ext_code.size(address(cd[132]))
    call address(cd[132]).0x885c2f35 with:
         gas gas_remaining wei
        args msg.sender, Array(len=('cd', 68).length, data=mem[mem[64] + 132 len (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 32]), (32 * ('cd', 68).length) + 128
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9cf45bf8(?) {
    require calldata.size - 4 >= 192
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = 128
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98 > test266151307() or floor32(('cd', 100).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = floor32(('cd', 68).length) + 129
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[132] == cd[132]
    require cd[164] == address(cd[164])
    if stor0:
        revert with 0, 'Pausable: paused'
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 162] = this.address
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 194] = cd[4]
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 226] = address(cd[36])
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] = 128
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 290] = 'UnfreezeErc1155BatchAction'
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 316 len 128] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130], address(this.address), cd[4], address(cd[36])
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 444 len 32 * ('cd', 68).length] = mem[128 len 32 * ('cd', 68).length]
    idx = 0
    s = floor32(('cd', 68).length) + 129
    t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + (32 * ('cd', 68).length) + 316
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 258] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 154
    if stor6[cd[4]]:
        revert with 0, 'duplicate action!'
    stor6[cd[4]] = 1
    if cd[132] >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
        revert with 0, 'signature must be reduced modulo Q'
    if not address(cd[164]):
        revert with 0, 'no zero inputs allowed'
    if sub_de1ab9a0 <= 0:
        revert with 0, 'no zero inputs allowed'
    if cd[132] <= 0:
        revert with 0, 'no zero inputs allowed'
    if sha3(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 290 len (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 154]) <= 0:
        revert with 0, 'no zero inputs allowed'
    if 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141 < mulmod(sub_de1ab9a0, cd[132], 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141):
        revert with 'NH{q', 17
    if not sub_16b47ef7:
        signer = erecover(-mulmod(sub_de1ab9a0, cd[132], 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 27, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 290 len (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 154]), address(cd[164])), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(cd[164]) != address(signer):
            revert with 0, 'failed to verify signature!'
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            _598 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _606 = mem[(32 * idx) + 128]
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 593] = 0xf242432a00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 597] = this.address
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 629] = address(cd[36])
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 661] = _606
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 693] = 1
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 725] = 160
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 757] = 0
            require ext_code.size(address(_598))
            call address(_598).0xf242432a with:
                 gas gas_remaining wei
                args address(this.address), address(cd[36]), _606, 1, 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        signer = erecover(-mulmod(sub_de1ab9a0, cd[132], 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 28, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, sha3(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 290 len (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 154]), address(cd[164])), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(cd[164]) != address(signer):
            revert with 0, 'failed to verify signature!'
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            _600 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _608 = mem[(32 * idx) + 128]
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 593] = 0xf242432a00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 597] = this.address
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 629] = address(cd[36])
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 661] = _608
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 693] = 1
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 725] = 160
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 757] = 0
            require ext_code.size(address(_600))
            call address(_600).0xf242432a with:
                 gas gas_remaining wei
                args address(this.address), address(cd[36]), _608, 1, 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_b0d32db6(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = floor32(('cd', 36).length) + 129
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] == uint64(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + 99 > test266151307() or ceil32(ceil32(('cd', 132).length)) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ('cd', 132).length
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ('cd', 132).length + 130] = 0
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 100 > test266151307() or ceil32(ceil32(('cd', 164).length)) + 100 < 99:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + 99] = ('cd', 164).length
    require cd[164] + ('cd', 164).length + 36 <= calldata.size
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + 131 len ('cd', 164).length] = call.data[cd[164] + 36 len ('cd', 164).length]
    if msg.value <= 0:
        revert with 0, 'Tx Fees is required!'
    if not stor5[address(cd[4])]:
        revert with 0, 'NFT not whitelisted?!'
    if uint256(stor3.field_0) > -2:
        revert with 'NH{q', 17
    uint256(stor3.field_0)++
    if stor4 > -msg.value - 1:
        revert with 'NH{q', 17
    stor4 += msg.value
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 100] = uint256(stor3.field_0)
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 132] = uint64(cd[100])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 164] = msg.value
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 196] = 224
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 324] = ('cd', 132).length
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 356 len ceil32(('cd', 132).length)] = call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, ('cd', 164).length) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256
    if ceil32(('cd', 132).length) <= ('cd', 132).length:
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 228] = ceil32(('cd', 132).length) + 256
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + ceil32(('cd', 132).length) + 356] = ('cd', 36).length
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + ceil32(('cd', 132).length) + 388 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 260] = address(cd[4])
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 292] = ceil32(('cd', 132).length) + (32 * ('cd', 36).length) + 288
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + ceil32(('cd', 132).length) + (32 * ('cd', 36).length) + 388] = ('cd', 164).length
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + ceil32(('cd', 132).length) + (32 * ('cd', 36).length) + 420 len ceil32(('cd', 164).length)] = call.data[cd[164] + 36 len ('cd', 164).length], Mask(8 * ceil32(('cd', 164).length) - ('cd', 164).length, 0, stor3.field_-(8 * ceil32(('cd', 164).length) + -ceil32(ceil32(('cd', 164).length)) + 31) + 256)
        if ceil32(('cd', 164).length) > ('cd', 164).length:
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + ceil32(('cd', 132).length) + (32 * ('cd', 36).length) + ('cd', 164).length + 420] = 0
        emit 0x3f998d84: uint256(stor3.field_0), cd[100] << 192, msg.value, Array(len=('cd', 132).length, data=Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, ('cd', 164).length) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, ('cd', 36).length, mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + ceil32(('cd', 132).length) + 388 len 32 * ('cd', 36).length], ('cd', 164).length, call.data[cd[164] + 36 len ('cd', 164).length], Mask(8 * ceil32(('cd', 164).length) - ('cd', 164).length, 0, stor3.field_-(8 * ceil32(('cd', 164).length) + -ceil32(ceil32(('cd', 164).length)) + 31) + 256)), ceil32(('cd', 132).length) + 256, address(cd[4]), ceil32(('cd', 132).length) + (32 * ('cd', 36).length) + 288
    else:
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + ('cd', 132).length + 356] = 0
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 228] = ceil32(('cd', 132).length) + 256
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + ceil32(('cd', 132).length) + 356] = ('cd', 36).length
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + ceil32(('cd', 132).length) + 388 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 260] = address(cd[4])
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 292] = ceil32(('cd', 132).length) + (32 * ('cd', 36).length) + 288
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + ceil32(('cd', 132).length) + (32 * ('cd', 36).length) + 388] = ('cd', 164).length
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + ceil32(('cd', 132).length) + (32 * ('cd', 36).length) + 420 len ceil32(('cd', 164).length)] = call.data[cd[164] + 36 len ('cd', 164).length], Mask(8 * ceil32(('cd', 164).length) - ('cd', 164).length, 0, stor3.field_-(8 * ceil32(('cd', 164).length) + -ceil32(ceil32(('cd', 164).length)) + 31) + 256)
        if ceil32(('cd', 164).length) > ('cd', 164).length:
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + ceil32(('cd', 132).length) + (32 * ('cd', 36).length) + ('cd', 164).length + 420] = 0
        emit 0x3f998d84: uint256(stor3.field_0), cd[100] << 192, msg.value, Array(len=('cd', 132).length, data=Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, ('cd', 164).length) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + ('cd', 132).length + 388 len (32 * ('cd', 36).length) - ('cd', 132).length + ceil32(('cd', 132).length)], ('cd', 164).length, call.data[cd[164] + 36 len ('cd', 164).length], Mask(8 * ceil32(('cd', 164).length) - ('cd', 164).length, 0, stor3.field_-(8 * ceil32(('cd', 164).length) + -ceil32(ceil32(('cd', 164).length)) + 31) + 256)), ceil32(('cd', 132).length) + 256, address(cd[4]), ceil32(('cd', 132).length) + (32 * ('cd', 36).length) + 288
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 100] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 104] = msg.sender
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 136] = this.address
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 168] = 160
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 264] = ('cd', 36).length
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 296 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 200] = (32 * ('cd', 36).length) + 192
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + (32 * ('cd', 36).length) + 296] = ('cd', 68).length
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + (32 * ('cd', 36).length) + 328 len 32 * ('cd', 68).length] = mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 68).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 328] = 0
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0x2eb2c2d6 with:
         gas gas_remaining wei
        args msg.sender, address(this.address), Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 296 len 28], ('cd', 132).length, mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(ceil32(('cd', 132).length)) + ceil32(ceil32(('cd', 164).length)) + 356 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 4]), (32 * ('cd', 36).length) + 192, (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ae54deaf(?) {
    require calldata.size - 4 >= 224
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = 128
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98 > test266151307() or floor32(('cd', 100).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = floor32(('cd', 68).length) + 129
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 99 > test266151307() or ceil32(ceil32(('cd', 132).length)) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] = ('cd', 132).length
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ('cd', 132).length + 130] = 0
    require cd[164] == cd[164]
    require cd[196] == address(cd[196])
    if stor0:
        revert with 0, 'Pausable: paused'
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 163] = this.address
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 195] = cd[4]
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 227] = address(cd[36])
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 99] = 128
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 291] = 'TransferNftBatchAction'
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 313 len 128] = 0, mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ('cd', 132).length + 162 len ceil32(ceil32(('cd', 132).length)) + -('cd', 132).length + 1], address(this.address), cd[4], address(cd[36])
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 441 len 32 * ('cd', 68).length] = mem[128 len 32 * ('cd', 68).length]
    idx = 0
    s = floor32(('cd', 68).length) + 129
    t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 99] + (32 * ('cd', 68).length) + 313
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 441 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98])] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98])]
    if ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]) <= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 259] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 150
        _1061 = sha3(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 291 len (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 150])
        if stor6[cd[4]]:
            revert with 0, 'duplicate action!'
        mem[0] = cd[4]
        stor6[cd[4]] = 1
        if cd[164] >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
            revert with 0, 'signature must be reduced modulo Q'
        if not address(cd[196]):
            revert with 0, 'no zero inputs allowed'
        if sub_de1ab9a0 <= 0:
            revert with 0, 'no zero inputs allowed'
        if cd[164] <= 0:
            revert with 0, 'no zero inputs allowed'
        if sha3(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 291 len (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 150]) <= 0:
            revert with 0, 'no zero inputs allowed'
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 473] = sub_de1ab9a0
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 505] = sub_16b47ef7
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 506] = _1061
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 538] = address(cd[196])
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 441] = 85
        if 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141 < mulmod(sub_de1ab9a0, cd[164], 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141):
            revert with 'NH{q', 17
        mem[64] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 590
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 590] = -mulmod(sub_de1ab9a0, cd[164], 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf
        if not sub_16b47ef7:
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 622] = 27
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 654] = sub_de1ab9a0
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 686] = mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, _1061, address(cd[196])), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)
            signer = erecover(-mulmod(sub_de1ab9a0, cd[164], 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 27, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, _1061, address(cd[196])), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 558] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[196]) != address(signer):
                revert with 0, 'failed to verify signature!'
            idx = 0
            while idx < ('cd', 68).length:
                if idx >= mem[floor32(('cd', 68).length) + 97]:
                    revert with 'NH{q', 50
                _1295 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1311 = mem[(32 * idx) + 128]
                _1312 = mem[64]
                mem[mem[64]] = 0x94d008ef00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _1311
                mem[mem[64] + 68] = 96
                _1327 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                mem[mem[64] + 100] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                s = 0
                while s < _1327:
                    mem[mem[64] + s + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + s + 130]
                    s = s + 32
                    continue 
                if ceil32(_1327) > _1327:
                    mem[_1312 + _1327 + 132] = 0
                require ext_code.size(address(_1295))
                call address(_1295).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1312 + ceil32(_1327) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 622] = 28
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 654] = sub_de1ab9a0
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 686] = mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, _1061, address(cd[196])), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)
            signer = erecover(-mulmod(sub_de1ab9a0, cd[164], 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 28, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, _1061, address(cd[196])), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 558] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[196]) != address(signer):
                revert with 0, 'failed to verify signature!'
            idx = 0
            while idx < ('cd', 68).length:
                if idx >= mem[floor32(('cd', 68).length) + 97]:
                    revert with 'NH{q', 50
                _1297 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1313 = mem[(32 * idx) + 128]
                _1314 = mem[64]
                mem[mem[64]] = 0x94d008ef00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _1313
                mem[mem[64] + 68] = 96
                _1328 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                mem[mem[64] + 100] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                s = 0
                while s < _1328:
                    mem[mem[64] + s + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + s + 130]
                    s = s + 32
                    continue 
                if ceil32(_1328) > _1328:
                    mem[_1314 + _1328 + 132] = 0
                require ext_code.size(address(_1297))
                call address(_1297).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1314 + ceil32(_1328) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 441] = 0
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 259] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 150
        _1068 = sha3(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 291 len (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 150])
        if stor6[cd[4]]:
            revert with 0, 'duplicate action!'
        mem[0] = cd[4]
        stor6[cd[4]] = 1
        if cd[164] >= 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141:
            revert with 0, 'signature must be reduced modulo Q'
        if not address(cd[196]):
            revert with 0, 'no zero inputs allowed'
        if sub_de1ab9a0 <= 0:
            revert with 0, 'no zero inputs allowed'
        if cd[164] <= 0:
            revert with 0, 'no zero inputs allowed'
        if sha3(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 291 len (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 150]) <= 0:
            revert with 0, 'no zero inputs allowed'
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 473] = sub_de1ab9a0
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 505] = sub_16b47ef7
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 506] = _1068
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 538] = address(cd[196])
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 441] = 85
        if 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141 < mulmod(sub_de1ab9a0, cd[164], 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141):
            revert with 'NH{q', 17
        mem[64] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 590
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 590] = -mulmod(sub_de1ab9a0, cd[164], 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf
        if not sub_16b47ef7:
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 622] = 27
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 654] = sub_de1ab9a0
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 686] = mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, _1068, address(cd[196])), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)
            signer = erecover(-mulmod(sub_de1ab9a0, cd[164], 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 27, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, _1068, address(cd[196])), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 558] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[196]) != address(signer):
                revert with 0, 'failed to verify signature!'
            idx = 0
            while idx < ('cd', 68).length:
                if idx >= mem[floor32(('cd', 68).length) + 97]:
                    revert with 'NH{q', 50
                _1299 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1315 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x94d008ef00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _1315
                mem[mem[64] + 68] = 96
                _1329 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                mem[mem[64] + 100] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                s = 0
                while s < _1329:
                    mem[mem[64] + s + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + s + 130]
                    s = s + 32
                    continue 
                if ceil32(_1329) > _1329:
                    mem[mem[64] + _1329 + 132] = 0
                require ext_code.size(address(_1299))
                call address(_1299).0x94d008ef with:
                     gas gas_remaining wei
                    args address(cd[36]), _1315, 96, mem[mem[64] + 100 len ceil32(_1329) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 622] = 28
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 654] = sub_de1ab9a0
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 686] = mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, _1068, address(cd[196])), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)
            signer = erecover(-mulmod(sub_de1ab9a0, cd[164], 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141) - 0x14551231950b75fc4402da1732fc9bebf, 28, sub_de1ab9a0, mulmod(sha3(sub_de1ab9a0, sub_16b47ef7, _1068, address(cd[196])), sub_de1ab9a0, 0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141)) 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] + 558] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[196]) != address(signer):
                revert with 0, 'failed to verify signature!'
            idx = 0
            while idx < ('cd', 68).length:
                if idx >= mem[floor32(('cd', 68).length) + 97]:
                    revert with 'NH{q', 50
                _1301 = mem[(32 * idx) + floor32(('cd', 68).length) + 129]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1317 = mem[(32 * idx) + 128]
                _1318 = mem[64]
                mem[mem[64]] = 0x94d008ef00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _1317
                mem[mem[64] + 68] = 96
                _1330 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                mem[mem[64] + 100] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
                s = 0
                while s < _1330:
                    mem[mem[64] + s + 132] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + s + 130]
                    s = s + 32
                    continue 
                if ceil32(_1330) > _1330:
                    mem[_1318 + _1330 + 132] = 0
                require ext_code.size(address(_1301))
                call address(_1301).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1318 + ceil32(_1330) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}



}
