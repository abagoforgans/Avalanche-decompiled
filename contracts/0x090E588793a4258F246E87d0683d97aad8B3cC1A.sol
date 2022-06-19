contract main {




// =====================  Runtime code  =====================


#
#  - getReward(address arg1)
#  - setMineRate(uint256 arg1, uint256 arg2)
#
function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7)))
}

function duration() payable {
    return ('storage', 256, 0, 6)
}

function getMultiSignatureAddress() payable {
    return ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975))
}

function sub_6525f1c5(?) payable {
    return ('storage', 256, 0, 5)
}

function startTime() payable {
    return ('storage', 256, 0, 10)
}

function rewardRate() payable {
    return ('storage', 256, 0, 4)
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 8)))
}

function owner() payable {
    return ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'"))
}

function lastUpdateTime() payable {
    return ('storage', 256, 0, 2)
}

function sub_d631eff9(?) payable {
    return ('storage', 160, 0, 11)
}

function rewardPerTokenStored() payable {
    return ('storage', 256, 0, 3)
}

function periodFinish() payable {
    return ('storage', 256, 0, 9)
}

function rewardToken() payable {
    return ('storage', 160, 0, 1)
}

function _fallback() payable {
    revert
}

function getMineInfo() payable {
    return ('storage', 256, 0, 5), ('storage', 256, 0, 6)
}

function isOwner() payable {
    return (msg.sender == ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")))
}

function txOrigin() payable {
    return ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")), 
           ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'"))
}

function sub_b40643a9(?) payable {
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) == msg.sender:
        return True
    return (('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) == msg.sender)
}

function lastTimeRewardApplicable() payable {
    if block.timestamp > ('storage', 256, 0, 10):
        if block.timestamp < ('storage', 256, 0, 9):
            return block.timestamp
    else:
        if ('storage', 256, 0, 10) < ('storage', 256, 0, 9):
            return ('storage', 256, 0, 10)
    return ('storage', 256, 0, 9)
}

function setHalt(bool arg1) payable {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0xfe70726f78794f776e65723a2063616c6c6572206d757374206265207468652070726f7879206f776e657220616e64206120636f6e747261637420616e64206e6f7420657870697265,
                    mem[237 len 23]
    Mask(96, 0, stor[0].field_160) = Mask(96, 0, arg1)
}

function renounceOwnership() payable {
    if ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0xfe70726f78794f776e65723a2063616c6c6572206d757374206265207468652070726f7879206f776e657220616e64206120636f6e747261637420616e64206e6f7420657870697265,
                    mem[237 len 23]
    emit OwnershipTransferred(('storage', 160, 0, 0), 0);
    address(stor[0].field_0) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0xfe70726f78794f776e65723a2063616c6c6572206d757374206265207468652070726f7879206f776e657220616e64206120636f6e747261637420616e64206e6f7420657870697265,
                    mem[237 len 23]
    emit OwnershipTransferred(('storage', 160, 0, ('sha3', "'org.defrost.Owner.storage'")), arg1);
    address(stor[sha3('org.defrost.Owner.storage')].field_0) = arg1
    Mask(96, 0, stor[sha3('org.defrost.Owner.storage')].field_160) = 0
}

function setPoolToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    46,
                    0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
    address(stor[11].field_0) = arg1
    address(stor[1].field_0) = arg2
}

function sub_f6c1da1a(?) payable {
    require calldata.size - 4 >= 64
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    46,
                    0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
    emit OriginTransferred(arg1, arg2);
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) == arg1:
        address(stor[sha3('org.defrost.Origin.storage.0')].field_0) = arg2
        Mask(96, 0, stor[sha3('org.defrost.Origin.storage.0')].field_160) = 0
    else:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != arg1:
            revert with 0, 
                        32,
                        50,
                        0x644f726967696e5472616e73666572726564203a206f6c64206f726967696e20697320696c6c6567616c2061646472657373,
                        mem[calldata.size + 318 len 14]
        address(stor[sha3('org.defrost.Origin.storage.1')].field_0) = arg2
        Mask(96, 0, stor[sha3('org.defrost.Origin.storage.1')].field_160) = 0
}

function sub_0e573242(?) payable {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    46,
                    0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
    require ext_code.size(('storage', 160, 0, 1))
    staticcall ('storage', 160, 0, 1).0x70a08231 with:
            gas gas_remaining wei
           args ('storage', 160, 0, 11)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(('storage', 160, 0, 1)):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[calldata.size + 332 len 96] = unknown_0x23b872dd(?????), ('storage', 224, 0, 11), ('storage', 32, 0, 11), address(arg1), ext_call.return_data[0 len 28]
    mem[calldata.size + 456 len 4] = ext_call.return_data[20 len 4]
    call ('storage', 160, 0, 1) with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[calldata.size + 428 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if calldata.size + 72:
            require calldata.size + 72 >= 32
            if not msg.sender, Mask(96, 64, this.address) >> 64:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[calldata.size + 442 len 14],
                            ext_call.return_data[20 len 4],
                            mem[calldata.size + 460 len 4]
    else:
        mem[calldata.size + 364 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[calldata.size + 364]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[calldata.size + ceil32(return_data.size) + 443 len 22]
}

function rewardPerToken() payable {
    require ext_code.size(('storage', 160, 0, 11))
    staticcall ('storage', 160, 0, 11).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ('storage', 256, 0, 3)
    if block.timestamp < ('storage', 256, 0, 10):
        return ('storage', 256, 0, 3)
    require ext_code.size(('storage', 160, 0, 11))
    staticcall ('storage', 160, 0, 11).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp > ('storage', 256, 0, 10):
        if block.timestamp < ('storage', 256, 0, 9):
            if ('storage', 256, 0, 2) > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - ('storage', 256, 0, 2):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + ('storage', 256, 0, 3))
            if (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / block.timestamp - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + ('storage', 256, 0, 3))
            if (10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                revert with 0, 'SafeMath: addition overflow'
            return (((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3))
    else:
        if ('storage', 256, 0, 10) < ('storage', 256, 0, 9):
            if ('storage', 256, 0, 2) > ('storage', 256, 0, 10):
                revert with 0, 'SafeMath: subtraction overflow'
            if not ('storage', 256, 0, 10) - ('storage', 256, 0, 2):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + ('storage', 256, 0, 3))
            if (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 10) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + ('storage', 256, 0, 3))
            if (10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                revert with 0, 'SafeMath: addition overflow'
            return (((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3))
    if ('storage', 256, 0, 2) > ('storage', 256, 0, 9):
        revert with 0, 'SafeMath: subtraction overflow'
    if not ('storage', 256, 0, 9) - ('storage', 256, 0, 2):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / ext_call.return_data[0]) + ('storage', 256, 0, 3))
    if (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 9) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / ext_call.return_data[0]) + ('storage', 256, 0, 3))
    if (10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3))
}

function setPeriodFinish(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.0'")) != msg.sender:
        if ('storage', 160, 0, ('sha3', "'org.defrost.Origin.storage.1'")) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)))
    staticcall ('storage', 160, 0, ('sha3', 2977182152349947152088741541544837042853150695196453223036508306113305758131183975)).getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 'address', 'callvalue', ('call.data', 0, 'calldatasize'))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    46,
                    0x656d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    uint256(stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])].field_0) = ext_call.return_data[0]
    require ext_code.size(('storage', 160, 0, 11))
    staticcall ('storage', 160, 0, 11).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if block.timestamp >= ('storage', 256, 0, 10):
            require ext_code.size(('storage', 160, 0, 11))
            staticcall ('storage', 160, 0, 11).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp > ('storage', 256, 0, 10):
                if block.timestamp < ('storage', 256, 0, 9):
                    if ('storage', 256, 0, 2) > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - ('storage', 256, 0, 2):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                    else:
                        if (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / block.timestamp - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                        if not (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                        else:
                            if (10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                else:
                    if ('storage', 256, 0, 2) > ('storage', 256, 0, 9):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ('storage', 256, 0, 9) - ('storage', 256, 0, 2):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                    else:
                        if (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 9) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                        if not (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                        else:
                            if (10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3)
            else:
                if ('storage', 256, 0, 10) < ('storage', 256, 0, 9):
                    if ('storage', 256, 0, 2) > ('storage', 256, 0, 10):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ('storage', 256, 0, 10) - ('storage', 256, 0, 2):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                    else:
                        if (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 10) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                        if not (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                        else:
                            if (10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                else:
                    if ('storage', 256, 0, 2) > ('storage', 256, 0, 9):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ('storage', 256, 0, 9) - ('storage', 256, 0, 2):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                    else:
                        if (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 9) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                        if not (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                        else:
                            if (10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[calldata.size + 365 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3)
    if block.timestamp > ('storage', 256, 0, 10):
        if block.timestamp < ('storage', 256, 0, 9):
            uint256(stor[2].field_0) = block.timestamp
        else:
            uint256(stor[2].field_0) = ('storage', 256, 0, 9)
    else:
        if ('storage', 256, 0, 10) < ('storage', 256, 0, 9):
            uint256(stor[2].field_0) = ('storage', 256, 0, 10)
        else:
            uint256(stor[2].field_0) = ('storage', 256, 0, 9)
    require arg1 > block.timestamp
    require arg2 > arg1
    uint256(stor[2].field_0) = arg1
    uint256(stor[9].field_0) = arg2
    uint256(stor[10].field_0) = arg1
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(('storage', 160, 0, 11))
    staticcall ('storage', 160, 0, 11).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ('storage', 256, 0, 3):
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(('storage', 160, 0, 11))
        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
        if (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18))
    if block.timestamp < ('storage', 256, 0, 10):
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ('storage', 256, 0, 3):
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(('storage', 160, 0, 11))
        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
        if (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18))
    require ext_code.size(('storage', 160, 0, 11))
    staticcall ('storage', 160, 0, 11).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp > ('storage', 256, 0, 10):
        if block.timestamp < ('storage', 256, 0, 9):
            if ('storage', 256, 0, 2) > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - ('storage', 256, 0, 2):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                    revert with 0, 'SafeMath: addition overflow'
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(('storage', 160, 0, 11))
                staticcall ('storage', 160, 0, 11).0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18))
            if (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / block.timestamp - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                    revert with 0, 'SafeMath: addition overflow'
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(('storage', 160, 0, 11))
                staticcall ('storage', 160, 0, 11).0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18))
            if (10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                revert with 0, 'SafeMath: addition overflow'
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(('storage', 160, 0, 11))
            staticcall ('storage', 160, 0, 11).0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
            if ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18))
    else:
        if ('storage', 256, 0, 10) < ('storage', 256, 0, 9):
            if ('storage', 256, 0, 2) > ('storage', 256, 0, 10):
                revert with 0, 'SafeMath: subtraction overflow'
            if not ('storage', 256, 0, 10) - ('storage', 256, 0, 2):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                    revert with 0, 'SafeMath: addition overflow'
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(('storage', 160, 0, 11))
                staticcall ('storage', 160, 0, 11).0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18))
            if (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 10) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                    revert with 0, 'SafeMath: addition overflow'
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(('storage', 160, 0, 11))
                staticcall ('storage', 160, 0, 11).0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18))
            if (10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                revert with 0, 'SafeMath: addition overflow'
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(('storage', 160, 0, 11))
            staticcall ('storage', 160, 0, 11).0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
            if ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18))
    if ('storage', 256, 0, 2) > ('storage', 256, 0, 9):
        revert with 0, 'SafeMath: subtraction overflow'
    if not ('storage', 256, 0, 9) - ('storage', 256, 0, 2):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
            revert with 0, 'SafeMath: addition overflow'
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(('storage', 160, 0, 11))
        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18))
    if (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 9) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
            revert with 0, 'SafeMath: addition overflow'
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(('storage', 160, 0, 11))
        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18))
    if (10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
        revert with 0, 'SafeMath: addition overflow'
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(('storage', 160, 0, 11))
    staticcall ('storage', 160, 0, 11).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
    if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18))
}

function unstake(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(('storage', 160, 0, 11))
    staticcall ('storage', 160, 0, 11).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if block.timestamp > ('storage', 256, 0, 10):
            if block.timestamp < ('storage', 256, 0, 9):
                uint256(stor[2].field_0) = block.timestamp
            else:
                uint256(stor[2].field_0) = ('storage', 256, 0, 9)
        else:
            if ('storage', 256, 0, 10) < ('storage', 256, 0, 9):
                uint256(stor[2].field_0) = ('storage', 256, 0, 10)
            else:
                uint256(stor[2].field_0) = ('storage', 256, 0, 9)
        if arg1:
            require ext_code.size(('storage', 160, 0, 11))
            staticcall ('storage', 160, 0, 11).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ('storage', 256, 0, 3):
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(('storage', 160, 0, 11))
                staticcall ('storage', 160, 0, 11).0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
            else:
                if block.timestamp < ('storage', 256, 0, 10):
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ('storage', 256, 0, 3):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(('storage', 160, 0, 11))
                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                else:
                    require ext_code.size(('storage', 160, 0, 11))
                    staticcall ('storage', 160, 0, 11).0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp > ('storage', 256, 0, 10):
                        if block.timestamp < ('storage', 256, 0, 9):
                            if ('storage', 256, 0, 2) > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.timestamp - ('storage', 256, 0, 2):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                    revert with 0, 'SafeMath: addition overflow'
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(('storage', 160, 0, 11))
                                staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                            else:
                                if (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / block.timestamp - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                else:
                                    if (10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                        else:
                            if ('storage', 256, 0, 2) > ('storage', 256, 0, 9):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ('storage', 256, 0, 9) - ('storage', 256, 0, 2):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                    revert with 0, 'SafeMath: addition overflow'
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(('storage', 160, 0, 11))
                                staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                            else:
                                if (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 9) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                else:
                                    if (10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                    else:
                        if ('storage', 256, 0, 10) < ('storage', 256, 0, 9):
                            if ('storage', 256, 0, 2) > ('storage', 256, 0, 10):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ('storage', 256, 0, 10) - ('storage', 256, 0, 2):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                    revert with 0, 'SafeMath: addition overflow'
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(('storage', 160, 0, 11))
                                staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                            else:
                                if (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 10) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                else:
                                    if (10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                        else:
                            if ('storage', 256, 0, 2) > ('storage', 256, 0, 9):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not ('storage', 256, 0, 9) - ('storage', 256, 0, 2):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                    revert with 0, 'SafeMath: addition overflow'
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(('storage', 160, 0, 11))
                                staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                            else:
                                if (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 9) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                else:
                                    if (10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
            uint256(stor[sha3(address(arg1), 8)].field_0) = ('storage', 256, 0, 3)
    else:
        if block.timestamp < ('storage', 256, 0, 10):
            if block.timestamp > ('storage', 256, 0, 10):
                if block.timestamp < ('storage', 256, 0, 9):
                    uint256(stor[2].field_0) = block.timestamp
                else:
                    uint256(stor[2].field_0) = ('storage', 256, 0, 9)
            else:
                if ('storage', 256, 0, 10) < ('storage', 256, 0, 9):
                    uint256(stor[2].field_0) = ('storage', 256, 0, 10)
                else:
                    uint256(stor[2].field_0) = ('storage', 256, 0, 9)
            if arg1:
                require ext_code.size(('storage', 160, 0, 11))
                staticcall ('storage', 160, 0, 11).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ('storage', 256, 0, 3):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(('storage', 160, 0, 11))
                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                else:
                    if block.timestamp < ('storage', 256, 0, 10):
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ('storage', 256, 0, 3):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(('storage', 160, 0, 11))
                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                    else:
                        require ext_code.size(('storage', 160, 0, 11))
                        staticcall ('storage', 160, 0, 11).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp > ('storage', 256, 0, 10):
                            if block.timestamp < ('storage', 256, 0, 9):
                                if ('storage', 256, 0, 2) > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - ('storage', 256, 0, 2):
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                else:
                                    if (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / block.timestamp - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                    else:
                                        if (10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                            else:
                                if ('storage', 256, 0, 2) > ('storage', 256, 0, 9):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ('storage', 256, 0, 9) - ('storage', 256, 0, 2):
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                else:
                                    if (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 9) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                    else:
                                        if (10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                        else:
                            if ('storage', 256, 0, 10) < ('storage', 256, 0, 9):
                                if ('storage', 256, 0, 2) > ('storage', 256, 0, 10):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ('storage', 256, 0, 10) - ('storage', 256, 0, 2):
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                else:
                                    if (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 10) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                    else:
                                        if (10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                            else:
                                if ('storage', 256, 0, 2) > ('storage', 256, 0, 9):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ('storage', 256, 0, 9) - ('storage', 256, 0, 2):
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                else:
                                    if (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 9) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                    else:
                                        if (10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                uint256(stor[sha3(address(arg1), 8)].field_0) = ('storage', 256, 0, 3)
        else:
            require ext_code.size(('storage', 160, 0, 11))
            staticcall ('storage', 160, 0, 11).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp > ('storage', 256, 0, 10):
                if block.timestamp < ('storage', 256, 0, 9):
                    if ('storage', 256, 0, 2) > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - ('storage', 256, 0, 2):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                    else:
                        if (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / block.timestamp - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                        else:
                            if (10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                else:
                    if ('storage', 256, 0, 2) > ('storage', 256, 0, 9):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ('storage', 256, 0, 9) - ('storage', 256, 0, 2):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                    else:
                        if (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 9) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                        else:
                            if (10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3)
            else:
                if ('storage', 256, 0, 10) < ('storage', 256, 0, 9):
                    if ('storage', 256, 0, 2) > ('storage', 256, 0, 10):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ('storage', 256, 0, 10) - ('storage', 256, 0, 2):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                    else:
                        if (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 10) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                        else:
                            if (10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                else:
                    if ('storage', 256, 0, 2) > ('storage', 256, 0, 9):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ('storage', 256, 0, 9) - ('storage', 256, 0, 2):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                    else:
                        if (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 9) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3)
                        else:
                            if (10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[3].field_0) = ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3)
            if block.timestamp > ('storage', 256, 0, 10):
                if block.timestamp < ('storage', 256, 0, 9):
                    uint256(stor[2].field_0) = block.timestamp
                else:
                    uint256(stor[2].field_0) = ('storage', 256, 0, 9)
            else:
                if ('storage', 256, 0, 10) < ('storage', 256, 0, 9):
                    uint256(stor[2].field_0) = ('storage', 256, 0, 10)
                else:
                    uint256(stor[2].field_0) = ('storage', 256, 0, 9)
            if arg1:
                require ext_code.size(('storage', 160, 0, 11))
                staticcall ('storage', 160, 0, 11).0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ('storage', 256, 0, 3):
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(('storage', 160, 0, 11))
                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                else:
                    if block.timestamp < ('storage', 256, 0, 10):
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ('storage', 256, 0, 3):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(('storage', 160, 0, 11))
                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                    else:
                        require ext_code.size(('storage', 160, 0, 11))
                        staticcall ('storage', 160, 0, 11).0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp > ('storage', 256, 0, 10):
                            if block.timestamp < ('storage', 256, 0, 9):
                                if ('storage', 256, 0, 2) > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - ('storage', 256, 0, 2):
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                else:
                                    if (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / block.timestamp - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                    else:
                                        if (10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (block.timestamp * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < ((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * block.timestamp * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                            else:
                                if ('storage', 256, 0, 2) > ('storage', 256, 0, 9):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ('storage', 256, 0, 9) - ('storage', 256, 0, 2):
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                else:
                                    if (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 9) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                    else:
                                        if (10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                        else:
                            if ('storage', 256, 0, 10) < ('storage', 256, 0, 9):
                                if ('storage', 256, 0, 2) > ('storage', 256, 0, 10):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ('storage', 256, 0, 10) - ('storage', 256, 0, 2):
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                else:
                                    if (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 10) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                    else:
                                        if (10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < ((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 10) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                            else:
                                if ('storage', 256, 0, 2) > ('storage', 256, 0, 9):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not ('storage', 256, 0, 9) - ('storage', 256, 0, 2):
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: addition overflow'
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(('storage', 160, 0, 11))
                                    staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                else:
                                    if (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ('storage', 256, 0, 9) - ('storage', 256, 0, 2) != ('storage', 256, 0, 4):
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)):
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                                    else:
                                        if (10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / (('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (('storage', 256, 0, 2) * ('storage', 256, 0, 4)) != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: addition overflow'
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) > ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(('storage', 160, 0, 11))
                                        staticcall ('storage', 160, 0, 11).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0]) + ('storage', 256, 0, 3) - ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))):
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18) < ((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            uint256(stor[sha3(address(arg1), 7)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))) + (((10^18 * ('storage', 256, 0, 9) * ('storage', 256, 0, 4)) - (10^18 * ('storage', 256, 0, 2) * ('storage', 256, 0, 4)) / ext_call.return_data[0] * ext_call.return_data[0]) + (('storage', 256, 0, 3) * ext_call.return_data[0]) - (('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 8))) * ext_call.return_data[0]) / 10^18)
                uint256(stor[sha3(address(arg1), 8)].field_0) = ('storage', 256, 0, 3)
    if ('storage', 160, 0, 11) != msg.sender:
        revert with 0, 'not admin'
}



}
