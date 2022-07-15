contract main {




// =====================  Runtime code  =====================


#
#  - sub_ba23fa18(?)
#
const sub_29e490c2(?) = 20

const sub_65037511(?) = 2400000000 * 10^18

const MAX_ALPHA = 8


uint8 stor0; offset 160
address owner;
array of struct pack;
address gameAddress;
address hodlAddress;
address sub_958ac40aAddress;
mapping of struct sub_771f2476;
mapping of struct sub_35b468aa;
mapping of uint256 sub_46c512aa;
mapping of uint256 sub_a2e9b439;
mapping of uint256 packIndices;
uint256 sub_6f82aa26;
uint256 unaccountedRewards;
uint256 sub_9859bb2d;
uint256 sub_638b42a6;
uint256 sub_8fcf3054;
uint256 sub_a6aaba0e;
uint256 MINIMUM_TO_EXIT;
uint256 sub_06a8e1df;
uint256 sub_5e308b86;
uint256 lastClaimTimestamp;
uint8 rescueEnabled;
uint8 stor20; offset 8

function sub_06a8e1df(?) payable {
    return sub_06a8e1df
}

function sub_35b468aa(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_35b468aa[arg1][arg2].field_0
}

function MINIMUM_TO_EXIT() payable {
    return MINIMUM_TO_EXIT
}

function rescueEnabled() payable {
    return bool(rescueEnabled)
}

function sub_46c512aa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_46c512aa[arg1]
}

function paused() payable {
    return bool(stor0)
}

function sub_5e308b86(?) payable {
    return sub_5e308b86
}

function lastClaimTimestamp() payable {
    return lastClaimTimestamp
}

function hodl() payable {
    return hodlAddress
}

function sub_638b42a6(?) payable {
    return sub_638b42a6
}

function packIndices(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return packIndices[arg1]
}

function sub_6f82aa26(?) payable {
    return sub_6f82aa26
}

function sub_771f2476(?) payable {
    require calldata.size - 4 >= 32
    return sub_771f2476[arg1].field_0, sub_771f2476[arg1].field_0, sub_771f2476[arg1].field_256, sub_771f2476[arg1].field_512
}

function owner() payable {
    return owner
}

function sub_8fcf3054(?) payable {
    return sub_8fcf3054
}

function sub_958ac40a(?) payable {
    return sub_958ac40aAddress
}

function sub_9859bb2d(?) payable {
    return sub_9859bb2d
}

function sub_a2e9b439(?) payable {
    require calldata.size - 4 >= 32
    return sub_a2e9b439[arg1]
}

function sub_a6aaba0e(?) payable {
    return sub_a6aaba0e
}

function unaccountedRewards() payable {
    return unaccountedRewards
}

function game() payable {
    return gameAddress
}

function pack(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < pack[arg1].field_0
    return pack[arg1][arg2].field_0, pack[arg1][arg2].field_0, pack[arg1][arg2].field_256, pack[arg1][arg2].field_512
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

function setRescueEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rescueEnabled = uint8(arg1)
}

function setSettings(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MINIMUM_TO_EXIT = arg3
    sub_638b42a6 = arg1
    sub_8fcf3054 = arg2
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

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not stor0:
            revert with 0, 'Pausable: not paused'
        stor0 = 0
        emit Unpaused(msg.sender);
    else:
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot send tokens to Barn directly'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_63b7ae4a(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(gameAddress)
    staticcall gameAddress.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall 'console.log'.log(string arg1, bool arg2) with:
            gas gas_remaining wei
           args 0, 64, bool(ext_call.return_data[0]), 9, 'struct %s', 0
    return bool(ext_call.return_data[0])
}

function walletOfOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_46c512aa[address(arg1)] > test266151307():
        revert with 0, 65
    if sub_46c512aa[address(arg1)]:
        mem[128 len 32 * sub_46c512aa[address(arg1)]] = call.data[calldata.size len 32 * sub_46c512aa[address(arg1)]]
    idx = 0
    while idx < sub_46c512aa[address(arg1)]:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 6)
        if idx >= sub_46c512aa[address(arg1)]:
            revert with 0, 50
        mem[(32 * idx) + 128] = sub_35b468aa[address(arg1)][idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=sub_46c512aa[address(arg1)], data=mem[128 len 32 * sub_46c512aa[address(arg1)]])
}

function sub_454c73a1(?) payable {
    require calldata.size - 4 >= 32
    if 24 * 3600 > -sub_771f2476[arg1].field_16 + test266151307():
        revert with 0, 17
    if block.timestamp < Mask(80, 0, sub_771f2476[arg1].field_16 + (24 * 3600)):
        return 9
    if 48 * 24 * 3600 > -sub_771f2476[arg1].field_16 + test266151307():
        revert with 0, 17
    if block.timestamp < Mask(80, 0, sub_771f2476[arg1].field_16 + (48 * 24 * 3600)):
        return 7
    if 72 * 24 * 3600 > -sub_771f2476[arg1].field_16 + test266151307():
        revert with 0, 17
    if block.timestamp < Mask(80, 0, sub_771f2476[arg1].field_16 + (72 * 24 * 3600)):
        return 5
    if 96 * 24 * 3600 > -sub_771f2476[arg1].field_16 + test266151307():
        revert with 0, 17
    if block.timestamp < Mask(80, 0, sub_771f2476[arg1].field_16 + (96 * 24 * 3600)):
        return 3
    if 120 * 24 * 3600 > -sub_771f2476[arg1].field_16 + test266151307():
        revert with 0, 17
    if block.timestamp >= Mask(80, 0, sub_771f2476[arg1].field_16 + (120 * 24 * 3600)):
        return 1
    return 2
}

function sub_8217f8d6(?) payable {
    require calldata.size - 4 >= 32
    if 24 * 3600 > -sub_771f2476[arg1].field_16 + test266151307():
        revert with 0, 17
    if block.timestamp >= Mask(80, 0, sub_771f2476[arg1].field_16 + (24 * 3600)):
        if 48 * 24 * 3600 > -sub_771f2476[arg1].field_16 + test266151307():
            revert with 0, 17
        if block.timestamp >= Mask(80, 0, sub_771f2476[arg1].field_16 + (48 * 24 * 3600)):
            if 72 * 24 * 3600 > -sub_771f2476[arg1].field_16 + test266151307():
                revert with 0, 17
            if block.timestamp >= Mask(80, 0, sub_771f2476[arg1].field_16 + (72 * 24 * 3600)):
                if 96 * 24 * 3600 > -sub_771f2476[arg1].field_16 + test266151307():
                    revert with 0, 17
                if block.timestamp >= Mask(80, 0, sub_771f2476[arg1].field_16 + (96 * 24 * 3600)):
                    if 120 * 24 * 3600 > -sub_771f2476[arg1].field_16 + test266151307():
                        revert with 0, 17
                    if block.timestamp >= Mask(80, 0, sub_771f2476[arg1].field_16 + (120 * 24 * 3600)):
                        return 1
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function calculateRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(gameAddress)
    staticcall gameAddress.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        if sub_06a8e1df >= 2400000000 * 10^18:
            if sub_771f2476[arg1].field_16 > lastClaimTimestamp:
                return 0
            if lastClaimTimestamp < sub_771f2476[arg1].field_16:
                revert with 0, 17
            if lastClaimTimestamp - sub_771f2476[arg1].field_16 and sub_638b42a6 > -1 / lastClaimTimestamp - sub_771f2476[arg1].field_16:
                revert with 0, 17
            return ((lastClaimTimestamp * sub_638b42a6) - (sub_771f2476[arg1].field_0 * sub_638b42a6) / 24 * 3600)
        if block.timestamp < sub_771f2476[arg1].field_16:
            revert with 0, 17
        if block.timestamp - sub_771f2476[arg1].field_16 and sub_638b42a6 > -1 / block.timestamp - sub_771f2476[arg1].field_16:
            revert with 0, 17
        if ext_call.return_data[32] > (block.timestamp * sub_638b42a6) - (sub_771f2476[arg1].field_16 * sub_638b42a6) / 24 * 3600:
            return ((block.timestamp * sub_638b42a6) - (sub_771f2476[arg1].field_0 * sub_638b42a6) / 24 * 3600)
        return ext_call.return_data[32]
    if sub_9859bb2d < sub_771f2476[arg1].field_16:
        revert with 0, 17
    if sub_06a8e1df >= 2400000000 * 10^18:
        if sub_771f2476[arg1].field_16 > lastClaimTimestamp:
            if sub_9859bb2d < sub_771f2476[arg1].field_256:
                revert with 0, 17
            if sub_9859bb2d < sub_771f2476[arg1].field_256:
                revert with 0, 17
            if sub_9859bb2d - sub_771f2476[arg1].field_256 <= sub_a6aaba0e:
                if 0 > !(sub_9859bb2d - sub_771f2476[arg1].field_256):
                    revert with 0, 17
                return (sub_9859bb2d - sub_771f2476[arg1].field_256)
            if sub_9859bb2d - sub_771f2476[arg1].field_256 < sub_a6aaba0e:
                revert with 0, 17
            if 0 > !(sub_9859bb2d - sub_771f2476[arg1].field_256 - sub_a6aaba0e):
                revert with 0, 17
            if sub_9859bb2d < sub_771f2476[arg1].field_256:
                revert with 0, 17
            if -sub_771f2476[arg1].field_256 < -sub_771f2476[arg1].field_256 - sub_a6aaba0e:
                revert with 0, 17
            if 0 > !sub_a6aaba0e:
                revert with 0, 17
            return sub_a6aaba0e
        if lastClaimTimestamp < sub_771f2476[arg1].field_16:
            revert with 0, 17
        if lastClaimTimestamp - sub_771f2476[arg1].field_16 and sub_8fcf3054 > -1 / lastClaimTimestamp - sub_771f2476[arg1].field_16:
            revert with 0, 17
        if sub_9859bb2d < sub_771f2476[arg1].field_256:
            revert with 0, 17
        if sub_9859bb2d < sub_771f2476[arg1].field_256:
            revert with 0, 17
        if sub_9859bb2d - sub_771f2476[arg1].field_256 <= sub_a6aaba0e:
            if (lastClaimTimestamp * sub_8fcf3054) - (sub_771f2476[arg1].field_16 * sub_8fcf3054) / 24 * 3600 > !(sub_9859bb2d - sub_771f2476[arg1].field_256):
                revert with 0, 17
            return (((lastClaimTimestamp * sub_8fcf3054) - (sub_771f2476[arg1].field_0 * sub_8fcf3054) / 24 * 3600) + sub_9859bb2d - sub_771f2476[arg1].field_256)
        if sub_9859bb2d - sub_771f2476[arg1].field_256 < sub_a6aaba0e:
            revert with 0, 17
        if 0 > !(sub_9859bb2d - sub_771f2476[arg1].field_256 - sub_a6aaba0e):
            revert with 0, 17
        if sub_9859bb2d < sub_771f2476[arg1].field_256:
            revert with 0, 17
        if -sub_771f2476[arg1].field_256 < -sub_771f2476[arg1].field_256 - sub_a6aaba0e:
            revert with 0, 17
        if (lastClaimTimestamp * sub_8fcf3054) - (sub_771f2476[arg1].field_16 * sub_8fcf3054) / 24 * 3600 > !sub_a6aaba0e:
            revert with 0, 17
        return (((lastClaimTimestamp * sub_8fcf3054) - (sub_771f2476[arg1].field_0 * sub_8fcf3054) / 24 * 3600) + sub_a6aaba0e)
    if block.timestamp < sub_771f2476[arg1].field_16:
        revert with 0, 17
    if block.timestamp - sub_771f2476[arg1].field_16 and sub_8fcf3054 > -1 / block.timestamp - sub_771f2476[arg1].field_16:
        revert with 0, 17
    if sub_9859bb2d < sub_771f2476[arg1].field_256:
        revert with 0, 17
    if sub_9859bb2d < sub_771f2476[arg1].field_256:
        revert with 0, 17
    if ext_call.return_data[32] > (block.timestamp * sub_8fcf3054) - (sub_771f2476[arg1].field_16 * sub_8fcf3054) / 24 * 3600:
        if sub_9859bb2d - sub_771f2476[arg1].field_256 <= sub_a6aaba0e:
            if (block.timestamp * sub_8fcf3054) - (sub_771f2476[arg1].field_16 * sub_8fcf3054) / 24 * 3600 > !(sub_9859bb2d - sub_771f2476[arg1].field_256):
                revert with 0, 17
            return (((block.timestamp * sub_8fcf3054) - (sub_771f2476[arg1].field_0 * sub_8fcf3054) / 24 * 3600) + sub_9859bb2d - sub_771f2476[arg1].field_256)
        if sub_9859bb2d - sub_771f2476[arg1].field_256 < sub_a6aaba0e:
            revert with 0, 17
        if 0 > !(sub_9859bb2d - sub_771f2476[arg1].field_256 - sub_a6aaba0e):
            revert with 0, 17
        if sub_9859bb2d < sub_771f2476[arg1].field_256:
            revert with 0, 17
        if -sub_771f2476[arg1].field_256 < -sub_771f2476[arg1].field_256 - sub_a6aaba0e:
            revert with 0, 17
        if (block.timestamp * sub_8fcf3054) - (sub_771f2476[arg1].field_16 * sub_8fcf3054) / 24 * 3600 > !sub_a6aaba0e:
            revert with 0, 17
        return (((block.timestamp * sub_8fcf3054) - (sub_771f2476[arg1].field_0 * sub_8fcf3054) / 24 * 3600) + sub_a6aaba0e)
    if sub_9859bb2d - sub_771f2476[arg1].field_256 <= sub_a6aaba0e:
        if ext_call.return_data[32] > !(sub_9859bb2d - sub_771f2476[arg1].field_256):
            revert with 0, 17
        return (ext_call.return_data[32] + sub_9859bb2d - sub_771f2476[arg1].field_256)
    if sub_9859bb2d - sub_771f2476[arg1].field_256 < sub_a6aaba0e:
        revert with 0, 17
    if 0 > !(sub_9859bb2d - sub_771f2476[arg1].field_256 - sub_a6aaba0e):
        revert with 0, 17
    if sub_9859bb2d < sub_771f2476[arg1].field_256:
        revert with 0, 17
    if -sub_771f2476[arg1].field_256 < -sub_771f2476[arg1].field_256 - sub_a6aaba0e:
        revert with 0, 17
    if ext_call.return_data[32] > !sub_a6aaba0e:
        revert with 0, 17
    return (ext_call.return_data[32] + sub_a6aaba0e)
}

function sub_5b519142(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor20:
        revert with 0, 'No reentrancy'
    stor20 = 1
    if address(cd[4]) != msg.sender:
        if gameAddress != msg.sender:
            revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(gameAddress)
            call gameAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if uint16(cd[((32 * idx) + cd[36] + 36)]):
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(gameAddress)
                staticcall gameAddress.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _529 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _532 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 96
                require mem[_529] == bool(mem[_529])
                mem[_532] = mem[_529]
                mem[_532 + 32] = mem[_529 + 32]
                mem[_532 + 64] = mem[_529 + 64]
                _544 = mem[64]
                mem[64] = mem[64] + 64
                mem[_544] = 9
                mem[_544 + 32] = 'struct %s' << 184
                _545 = mem[_532]
                _550 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 9
                s = 0
                while s < 9:
                    mem[s + mem[64] + 132] = mem[_544 + s + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 141] = 0
                mem[mem[64] + 68] = bool(_545)
                _1037 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_1037 + 32] = 0xc3b5563500000000000000000000000000000000000000000000000000000000 or mem[_1037 + 36 len 28]
                staticcall 'console.log'.mem[_1037 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_1037 + 36 len mem[_1037] - 4]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if not mem[_532]:
                    mem[_550 + 164] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[_550 + 196] = Mask(80, 0, block.timestamp)
                    mem[_550 + 228] = sub_9859bb2d
                    mem[_550 + 260] = address(cd[4])
                    sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                    sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                    sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_256 = sub_9859bb2d
                    sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_512 = address(cd[4])
                    sub_35b468aa[address(cd[4])][stor7[address(cd[4])]].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                    sub_35b468aa[address(cd[4])][stor7[address(cd[4])]].field_16 = 0
                    sub_a2e9b439[cd[((32 * idx) + cd[36] + 36)] << 240] = sub_46c512aa[address(cd[4])]
                    mem[0] = address(cd[4])
                    mem[32] = 7
                    if sub_46c512aa[address(cd[4])] == -1:
                        revert with 0, 17
                    sub_46c512aa[address(cd[4])]++
                    if sub_6f82aa26 == -1:
                        revert with 0, 17
                    sub_6f82aa26++
                    mem[_550 + 292] = 14
                    mem[_550 + 324] = 'Holder added !' << 144
                    mem[_550 + 392] = 32
                    mem[_550 + 424] = 14
                    s = 0
                    while s < 14:
                        mem[s + _550 + 456] = mem[_550 + s + 324]
                        s = s + 32
                        continue 
                    mem[_550 + 470] = 0
                    mem[_550 + 356] = 100
                    mem[64] = _550 + 488
                    mem[_550 + 388] = 0x41304fac00000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.log(string arg1) with:
                            gas gas_remaining wei
                           args 0, 0, 14, mem[_550 + 456 len 14], 0
                    mem[_550 + 488] = address(cd[4])
                    mem[_550 + 520] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[_550 + 552] = sub_9859bb2d
                    emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, sub_9859bb2d);
                else:
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    if sub_06a8e1df < 2400000000 * 10^18:
                        if block.timestamp < lastClaimTimestamp:
                            revert with 0, 17
                        if block.timestamp - lastClaimTimestamp and sub_5e308b86 > -1 / block.timestamp - lastClaimTimestamp:
                            revert with 0, 17
                        if (block.timestamp * sub_5e308b86) - (lastClaimTimestamp * sub_5e308b86) and sub_638b42a6 > -1 / (block.timestamp * sub_5e308b86) - (lastClaimTimestamp * sub_5e308b86):
                            revert with 0, 17
                        if sub_06a8e1df > !((block.timestamp * sub_5e308b86 * sub_638b42a6) - (lastClaimTimestamp * sub_5e308b86 * sub_638b42a6) / 24 * 3600):
                            revert with 0, 17
                        sub_06a8e1df += (block.timestamp * sub_5e308b86 * sub_638b42a6) - (lastClaimTimestamp * sub_5e308b86 * sub_638b42a6) / 24 * 3600
                        lastClaimTimestamp = block.timestamp
                    mem[_550 + 164] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[_550 + 196] = Mask(80, 0, block.timestamp)
                    mem[_550 + 228] = 0
                    mem[_550 + 260] = address(cd[4])
                    sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                    sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                    sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_256 = 0
                    sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_512 = address(cd[4])
                    sub_35b468aa[address(cd[4])][stor7[address(cd[4])]].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                    sub_35b468aa[address(cd[4])][stor7[address(cd[4])]].field_16 = 0
                    sub_a2e9b439[cd[((32 * idx) + cd[36] + 36)] << 240] = sub_46c512aa[address(cd[4])]
                    mem[0] = address(cd[4])
                    mem[32] = 7
                    if sub_46c512aa[address(cd[4])] == -1:
                        revert with 0, 17
                    sub_46c512aa[address(cd[4])]++
                    if sub_5e308b86 == -1:
                        revert with 0, 17
                    sub_5e308b86++
                    mem[_550 + 292] = 17
                    mem[_550 + 324] = 'PaperHand added !' << 120
                    mem[_550 + 392] = 32
                    mem[_550 + 424] = 17
                    s = 0
                    while s < 17:
                        mem[s + _550 + 456] = mem[_550 + s + 324]
                        s = s + 32
                        continue 
                    mem[_550 + 473] = 0
                    mem[_550 + 356] = 100
                    mem[64] = _550 + 488
                    mem[_550 + 388] = 0x41304fac00000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.log(string arg1) with:
                            gas gas_remaining wei
                           args 0, 0, 17, mem[_550 + 456 len 17], 0
                    mem[_550 + 488] = address(cd[4])
                    mem[_550 + 520] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[_550 + 552] = block.timestamp
                    emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if tx.origin == address(cd[4]):
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(gameAddress)
                call gameAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(gameAddress)
                    staticcall gameAddress.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _530 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _533 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    require mem[_530] == bool(mem[_530])
                    mem[_533] = mem[_530]
                    mem[_533 + 32] = mem[_530 + 32]
                    mem[_533 + 64] = mem[_530 + 64]
                    _546 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_546] = 9
                    mem[_546 + 32] = 'struct %s' << 184
                    _547 = mem[_533]
                    _551 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 9
                    s = 0
                    while s < 9:
                        mem[s + mem[64] + 132] = mem[_546 + s + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 141] = 0
                    mem[mem[64] + 68] = bool(_547)
                    _1040 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_1040 + 32] = 0xc3b5563500000000000000000000000000000000000000000000000000000000 or mem[_1040 + 36 len 28]
                    staticcall 'console.log'.mem[_1040 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_1040 + 36 len mem[_1040] - 4]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if not mem[_533]:
                        mem[_551 + 164] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_551 + 196] = Mask(80, 0, block.timestamp)
                        mem[_551 + 228] = sub_9859bb2d
                        mem[_551 + 260] = address(cd[4])
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_256 = sub_9859bb2d
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_512 = address(cd[4])
                        sub_35b468aa[address(cd[4])][stor7[address(cd[4])]].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        sub_35b468aa[address(cd[4])][stor7[address(cd[4])]].field_16 = 0
                        sub_a2e9b439[cd[((32 * idx) + cd[36] + 36)] << 240] = sub_46c512aa[address(cd[4])]
                        mem[0] = address(cd[4])
                        mem[32] = 7
                        if sub_46c512aa[address(cd[4])] == -1:
                            revert with 0, 17
                        sub_46c512aa[address(cd[4])]++
                        if sub_6f82aa26 == -1:
                            revert with 0, 17
                        sub_6f82aa26++
                        mem[_551 + 292] = 14
                        mem[_551 + 324] = 'Holder added !' << 144
                        mem[_551 + 392] = 32
                        mem[_551 + 424] = 14
                        s = 0
                        while s < 14:
                            mem[s + _551 + 456] = mem[_551 + s + 324]
                            s = s + 32
                            continue 
                        mem[_551 + 470] = 0
                        mem[_551 + 356] = 100
                        mem[64] = _551 + 488
                        mem[_551 + 388] = 0x41304fac00000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.log(string arg1) with:
                                gas gas_remaining wei
                               args 0, 0, 14, mem[_551 + 456 len 14], 0
                        mem[_551 + 488] = address(cd[4])
                        mem[_551 + 520] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_551 + 552] = sub_9859bb2d
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, sub_9859bb2d);
                    else:
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        if sub_06a8e1df < 2400000000 * 10^18:
                            if block.timestamp < lastClaimTimestamp:
                                revert with 0, 17
                            if block.timestamp - lastClaimTimestamp and sub_5e308b86 > -1 / block.timestamp - lastClaimTimestamp:
                                revert with 0, 17
                            if (block.timestamp * sub_5e308b86) - (lastClaimTimestamp * sub_5e308b86) and sub_638b42a6 > -1 / (block.timestamp * sub_5e308b86) - (lastClaimTimestamp * sub_5e308b86):
                                revert with 0, 17
                            if sub_06a8e1df > !((block.timestamp * sub_5e308b86 * sub_638b42a6) - (lastClaimTimestamp * sub_5e308b86 * sub_638b42a6) / 24 * 3600):
                                revert with 0, 17
                            sub_06a8e1df += (block.timestamp * sub_5e308b86 * sub_638b42a6) - (lastClaimTimestamp * sub_5e308b86 * sub_638b42a6) / 24 * 3600
                            lastClaimTimestamp = block.timestamp
                        mem[_551 + 164] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_551 + 196] = Mask(80, 0, block.timestamp)
                        mem[_551 + 228] = 0
                        mem[_551 + 260] = address(cd[4])
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_256 = 0
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_512 = address(cd[4])
                        sub_35b468aa[address(cd[4])][stor7[address(cd[4])]].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        sub_35b468aa[address(cd[4])][stor7[address(cd[4])]].field_16 = 0
                        sub_a2e9b439[cd[((32 * idx) + cd[36] + 36)] << 240] = sub_46c512aa[address(cd[4])]
                        mem[0] = address(cd[4])
                        mem[32] = 7
                        if sub_46c512aa[address(cd[4])] == -1:
                            revert with 0, 17
                        sub_46c512aa[address(cd[4])]++
                        if sub_5e308b86 == -1:
                            revert with 0, 17
                        sub_5e308b86++
                        mem[_551 + 292] = 17
                        mem[_551 + 324] = 'PaperHand added !' << 120
                        mem[_551 + 392] = 32
                        mem[_551 + 424] = 17
                        s = 0
                        while s < 17:
                            mem[s + _551 + 456] = mem[_551 + s + 324]
                            s = s + 32
                            continue 
                        mem[_551 + 473] = 0
                        mem[_551 + 356] = 100
                        mem[64] = _551 + 488
                        mem[_551 + 388] = 0x41304fac00000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.log(string arg1) with:
                                gas gas_remaining wei
                               args 0, 0, 17, mem[_551 + 456 len 17], 0
                        mem[_551 + 488] = address(cd[4])
                        mem[_551 + 520] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_551 + 552] = block.timestamp
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if gameAddress != msg.sender:
                revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(gameAddress)
                call gameAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(gameAddress)
                    staticcall gameAddress.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _531 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _534 = mem[64]
                    if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 96
                    require mem[_531] == bool(mem[_531])
                    mem[_534] = mem[_531]
                    mem[_534 + 32] = mem[_531 + 32]
                    mem[_534 + 64] = mem[_531 + 64]
                    _548 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_548] = 9
                    mem[_548 + 32] = 'struct %s' << 184
                    _549 = mem[_534]
                    _552 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 9
                    s = 0
                    while s < 9:
                        mem[s + mem[64] + 132] = mem[_548 + s + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 141] = 0
                    mem[mem[64] + 68] = bool(_549)
                    _1043 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_1043 + 32] = 0xc3b5563500000000000000000000000000000000000000000000000000000000 or mem[_1043 + 36 len 28]
                    staticcall 'console.log'.mem[_1043 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_1043 + 36 len mem[_1043] - 4]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if not mem[_534]:
                        mem[_552 + 164] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_552 + 196] = Mask(80, 0, block.timestamp)
                        mem[_552 + 228] = sub_9859bb2d
                        mem[_552 + 260] = address(cd[4])
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_256 = sub_9859bb2d
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_512 = address(cd[4])
                        sub_35b468aa[address(cd[4])][stor7[address(cd[4])]].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        sub_35b468aa[address(cd[4])][stor7[address(cd[4])]].field_16 = 0
                        sub_a2e9b439[cd[((32 * idx) + cd[36] + 36)] << 240] = sub_46c512aa[address(cd[4])]
                        mem[0] = address(cd[4])
                        mem[32] = 7
                        if sub_46c512aa[address(cd[4])] == -1:
                            revert with 0, 17
                        sub_46c512aa[address(cd[4])]++
                        if sub_6f82aa26 == -1:
                            revert with 0, 17
                        sub_6f82aa26++
                        mem[_552 + 292] = 14
                        mem[_552 + 324] = 'Holder added !' << 144
                        mem[_552 + 392] = 32
                        mem[_552 + 424] = 14
                        s = 0
                        while s < 14:
                            mem[s + _552 + 456] = mem[_552 + s + 324]
                            s = s + 32
                            continue 
                        mem[_552 + 470] = 0
                        mem[_552 + 356] = 100
                        mem[64] = _552 + 488
                        mem[_552 + 388] = 0x41304fac00000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.log(string arg1) with:
                                gas gas_remaining wei
                               args 0, 0, 14, mem[_552 + 456 len 14], 0
                        mem[_552 + 488] = address(cd[4])
                        mem[_552 + 520] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_552 + 552] = sub_9859bb2d
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, sub_9859bb2d);
                    else:
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        if sub_06a8e1df < 2400000000 * 10^18:
                            if block.timestamp < lastClaimTimestamp:
                                revert with 0, 17
                            if block.timestamp - lastClaimTimestamp and sub_5e308b86 > -1 / block.timestamp - lastClaimTimestamp:
                                revert with 0, 17
                            if (block.timestamp * sub_5e308b86) - (lastClaimTimestamp * sub_5e308b86) and sub_638b42a6 > -1 / (block.timestamp * sub_5e308b86) - (lastClaimTimestamp * sub_5e308b86):
                                revert with 0, 17
                            if sub_06a8e1df > !((block.timestamp * sub_5e308b86 * sub_638b42a6) - (lastClaimTimestamp * sub_5e308b86 * sub_638b42a6) / 24 * 3600):
                                revert with 0, 17
                            sub_06a8e1df += (block.timestamp * sub_5e308b86 * sub_638b42a6) - (lastClaimTimestamp * sub_5e308b86 * sub_638b42a6) / 24 * 3600
                            lastClaimTimestamp = block.timestamp
                        mem[_552 + 164] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_552 + 196] = Mask(80, 0, block.timestamp)
                        mem[_552 + 228] = 0
                        mem[_552 + 260] = address(cd[4])
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_256 = 0
                        sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_512 = address(cd[4])
                        sub_35b468aa[address(cd[4])][stor7[address(cd[4])]].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        sub_35b468aa[address(cd[4])][stor7[address(cd[4])]].field_16 = 0
                        sub_a2e9b439[cd[((32 * idx) + cd[36] + 36)] << 240] = sub_46c512aa[address(cd[4])]
                        mem[0] = address(cd[4])
                        mem[32] = 7
                        if sub_46c512aa[address(cd[4])] == -1:
                            revert with 0, 17
                        sub_46c512aa[address(cd[4])]++
                        if sub_5e308b86 == -1:
                            revert with 0, 17
                        sub_5e308b86++
                        mem[_552 + 292] = 17
                        mem[_552 + 324] = 'PaperHand added !' << 120
                        mem[_552 + 392] = 32
                        mem[_552 + 424] = 17
                        s = 0
                        while s < 17:
                            mem[s + _552 + 456] = mem[_552 + s + 324]
                            s = s + 32
                            continue 
                        mem[_552 + 473] = 0
                        mem[_552 + 356] = 100
                        mem[64] = _552 + 488
                        mem[_552 + 388] = 0x41304fac00000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.log(string arg1) with:
                                gas gas_remaining wei
                               args 0, 0, 17, mem[_552 + 456 len 17], 0
                        mem[_552 + 488] = address(cd[4])
                        mem[_552 + 520] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_552 + 552] = block.timestamp
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    stor20 = 0
}



}
