contract main {




// =====================  Runtime code  =====================


const burn = 0x8d426bfe128b171d8fd38a58dfea257f01206f34

const lpToken = 0xac3f978714c613e768272c502a8912bc03dcf624

const treasury = 0xa867c1aca4b5f1e0a66cf7b1fe33525d57608854

const sub_9975b113(?) = (ext_call.return_data[0] / 2)

const sub_cb0ec2b9(?) = 0xb2ac04b71888e17aa2c5102cf3d0215467d74100


address owner;
mapping of struct userData;
uint256 sub_da436167;
uint256 minBuyAmount;
uint256 sub_670e97ed;
uint256 buyCooldown;
uint256 sub_f1c49e64;
uint256 sub_404ea7d9;

function sub_404ea7d9(?) payable {
    return sub_404ea7d9
}

function sub_670e97ed(?) payable {
    return sub_670e97ed
}

function buyCooldown() payable {
    return buyCooldown
}

function owner() payable {
    return owner
}

function userData(address arg1) payable {
    require calldata.size - 4 >= 32
    return userData[arg1].field_0, userData[arg1].field_256, userData[arg1].field_512
}

function sub_da436167(?) payable {
    return sub_da436167
}

function sub_f1c49e64(?) payable {
    return sub_f1c49e64
}

function minBuyAmount() payable {
    return minBuyAmount
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setParams(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 >= 10^18
    sub_404ea7d9 = arg1
    minBuyAmount = arg2
    sub_670e97ed = arg3
    buyCooldown = arg4
    sub_f1c49e64 = arg5
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_26b5e81a(?) payable {
    require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
    staticcall 0xac3f978714c613e768272c502a8912bc03dcf624.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
    staticcall 0xac3f978714c613e768272c502a8912bc03dcf624.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[0]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero'
        return (0 / Mask(112, 0, ext_call.return_data[32]) / 100)
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 10^18 * ext_call.return_data[0]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero'
        return (0 / Mask(112, 0, ext_call.return_data[32]) / 100)
    if 125 * 10^14 * 3600 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != 45:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: division by zero'
    return (125 * 10^14 * 3600 * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 100)
}

function sub_3c3d8c8f(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < userData[address(arg1)].field_0:
        return 0
    require ext_code.size(0xb2ac04b71888e17aa2c5102cf3d0215467d74100)
    staticcall 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa867c1aca4b5f1e0a66cf7b1fe33525d57608854)
    staticcall 0xa867c1aca4b5f1e0a66cf7b1fe33525d57608854.lockedBalances(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa867c1aca4b5f1e0a66cf7b1fe33525d57608854)
    staticcall 0xa867c1aca4b5f1e0a66cf7b1fe33525d57608854.lockedSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] / 2:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if 0 / ext_call.return_data[0] <= ext_call.return_data[0] / 2:
            return (0 / ext_call.return_data[0])
    else:
        if sub_404ea7d9 * ext_call.return_data[0] / 2 / ext_call.return_data[0] / 2 != sub_404ea7d9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not sub_404ea7d9 * ext_call.return_data[0] / 2:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] <= ext_call.return_data[0] / 2:
                return (0 / ext_call.return_data[0])
        else:
            if ext_call.return_data[0] * sub_404ea7d9 * ext_call.return_data[0] / 2 / sub_404ea7d9 * ext_call.return_data[0] / 2 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0] * sub_404ea7d9 * ext_call.return_data[0] / 2 / ext_call.return_data[0] <= ext_call.return_data[0] / 2:
                return (ext_call.return_data[0] * sub_404ea7d9 * ext_call.return_data[0] / 2 / ext_call.return_data[0])
    return (ext_call.return_data[0] / 2)
}

function sub_48c74950(?) payable {
    require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
    staticcall 0xac3f978714c613e768272c502a8912bc03dcf624.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
    staticcall 0xac3f978714c613e768272c502a8912bc03dcf624.0x70a08231 with:
            gas gas_remaining wei
           args 0x8d426bfe128b171d8fd38a58dfea257f01206f34
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
    staticcall 0xac3f978714c613e768272c502a8912bc03dcf624.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(112, 0, ext_call.return_data[0]):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not Mask(112, 0, ext_call.return_data[32]):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
        if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return 0 / ext_call.return_data[0], ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
    if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not Mask(112, 0, ext_call.return_data[32]):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 0 / ext_call.return_data[0]
    if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0], 
           ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
}

function sub_b8b35b93(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xa867c1aca4b5f1e0a66cf7b1fe33525d57608854)
    staticcall 0xa867c1aca4b5f1e0a66cf7b1fe33525d57608854.lockedBalances(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_670e97ed:
        revert with 0, 'Need to lock BLZZ!'
    if arg1 < minBuyAmount:
        revert with 0, 'Below min buy amount'
    if block.timestamp < userData[msg.sender].field_0:
        revert with 0, 'Claimed too recently'
    require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
    staticcall 0xac3f978714c613e768272c502a8912bc03dcf624.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
    staticcall 0xac3f978714c613e768272c502a8912bc03dcf624.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[0]:
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
            call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0
        else:
            if 0 / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / arg1 != 0 / Mask(112, 0, ext_call.return_data[32]) / 100:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
            call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0 / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / 10^18
    else:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 10^18 * ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0
            else:
                if 0 / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / arg1 != 0 / Mask(112, 0, ext_call.return_data[32]) / 100:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0 / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / 10^18
        else:
            if 125 * 10^14 * 3600 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != 45:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0
            else:
                if 125 * 10^14 * 3600 * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / arg1 != 125 * 10^14 * 3600 * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 100:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 125 * 10^14 * 3600 * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb2ac04b71888e17aa2c5102cf3d0215467d74100)
    call 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb2ac04b71888e17aa2c5102cf3d0215467d74100)
    call 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0xa9059cbb with:
         gas gas_remaining wei
        args 0xa867c1aca4b5f1e0a66cf7b1fe33525d57608854, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_f1c49e64 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    userData[msg.sender].field_0 = sub_f1c49e64 + block.timestamp
    if userData[msg.sender].field_256 + 1 < userData[msg.sender].field_256:
        revert with 0, 'SafeMath: addition overflow'
    userData[msg.sender].field_256++
    if arg1 + userData[msg.sender].field_512 < userData[msg.sender].field_512:
        revert with 0, 'SafeMath: addition overflow'
    userData[msg.sender].field_512 += arg1
    if arg1 + sub_da436167 < sub_da436167:
        revert with 0, 'SafeMath: addition overflow'
    sub_da436167 += arg1
    emit 0x403f18c5: arg1, msg.sender
    emit 0x401d77fe: arg1, msg.sender
}

function sub_ba560803(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < userData[address(msg.sender)].field_0:
        if arg1 > 0:
            revert with 0, 'Amount exceeds user limit'
        if arg1 < minBuyAmount:
            revert with 0, 'Below min buy amount'
        if block.timestamp < userData[msg.sender].field_0:
            revert with 0, 'Claimed too recently'
        require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
        staticcall 0xac3f978714c613e768272c502a8912bc03dcf624.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
        staticcall 0xac3f978714c613e768272c502a8912bc03dcf624.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0
            else:
                if 0 / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / arg1 != 0 / Mask(112, 0, ext_call.return_data[32]) / 100:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0 / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / 10^18
        else:
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 10^18 * ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                    call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0
                else:
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / arg1 != 0 / Mask(112, 0, ext_call.return_data[32]) / 100:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                    call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0 / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / 10^18
            else:
                if 125 * 10^14 * 3600 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != 45:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                    call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0
                else:
                    if 125 * 10^14 * 3600 * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / arg1 != 125 * 10^14 * 3600 * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 100:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                    call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 125 * 10^14 * 3600 * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / 10^18
    else:
        require ext_code.size(0xb2ac04b71888e17aa2c5102cf3d0215467d74100)
        staticcall 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xa867c1aca4b5f1e0a66cf7b1fe33525d57608854)
        staticcall 0xa867c1aca4b5f1e0a66cf7b1fe33525d57608854.lockedBalances(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xa867c1aca4b5f1e0a66cf7b1fe33525d57608854)
        staticcall 0xa867c1aca4b5f1e0a66cf7b1fe33525d57608854.lockedSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] / 2:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] <= ext_call.return_data[0] / 2:
                if arg1 > 0 / ext_call.return_data[0]:
                    revert with 0, 'Amount exceeds user limit'
            else:
                if arg1 > ext_call.return_data[0] / 2:
                    revert with 0, 'Amount exceeds user limit'
        else:
            if sub_404ea7d9 * ext_call.return_data[0] / 2 / ext_call.return_data[0] / 2 != sub_404ea7d9:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_404ea7d9 * ext_call.return_data[0] / 2:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / ext_call.return_data[0] <= ext_call.return_data[0] / 2:
                    if arg1 > 0 / ext_call.return_data[0]:
                        revert with 0, 'Amount exceeds user limit'
                else:
                    if arg1 > ext_call.return_data[0] / 2:
                        revert with 0, 'Amount exceeds user limit'
            else:
                if ext_call.return_data[0] * sub_404ea7d9 * ext_call.return_data[0] / 2 / sub_404ea7d9 * ext_call.return_data[0] / 2 != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] * sub_404ea7d9 * ext_call.return_data[0] / 2 / ext_call.return_data[0] <= ext_call.return_data[0] / 2:
                    if arg1 > ext_call.return_data[0] * sub_404ea7d9 * ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                        revert with 0, 'Amount exceeds user limit'
                else:
                    if arg1 > ext_call.return_data[0] / 2:
                        revert with 0, 'Amount exceeds user limit'
        if arg1 < minBuyAmount:
            revert with 0, 'Below min buy amount'
        if block.timestamp < userData[msg.sender].field_0:
            revert with 0, 'Claimed too recently'
        require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
        staticcall 0xac3f978714c613e768272c502a8912bc03dcf624.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
        staticcall 0xac3f978714c613e768272c502a8912bc03dcf624.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0
            else:
                if 0 / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / arg1 != 0 / Mask(112, 0, ext_call.return_data[32]) / 100:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0 / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / 10^18
        else:
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 10^18 * ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                    call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0
                else:
                    if 0 / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / arg1 != 0 / Mask(112, 0, ext_call.return_data[32]) / 100:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                    call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0 / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / 10^18
            else:
                if 125 * 10^14 * 3600 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] != 45:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                    call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 0
                else:
                    if 125 * 10^14 * 3600 * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / arg1 != 125 * 10^14 * 3600 * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 100:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    require ext_code.size(0xac3f978714c613e768272c502a8912bc03dcf624)
                    call 0xac3f978714c613e768272c502a8912bc03dcf624.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, 0x8d426bfe128b171d8fd38a58dfea257f01206f34, 125 * 10^14 * 3600 * ext_call.return_data[0] / Mask(112, 0, ext_call.return_data[32]) / 100 * arg1 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb2ac04b71888e17aa2c5102cf3d0215467d74100)
    call 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb2ac04b71888e17aa2c5102cf3d0215467d74100)
    call 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0xa9059cbb with:
         gas gas_remaining wei
        args 0xa867c1aca4b5f1e0a66cf7b1fe33525d57608854, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if buyCooldown + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    userData[msg.sender].field_0 = buyCooldown + block.timestamp
    if userData[msg.sender].field_256 + 1 < userData[msg.sender].field_256:
        revert with 0, 'SafeMath: addition overflow'
    userData[msg.sender].field_256++
    if arg1 + userData[msg.sender].field_512 < userData[msg.sender].field_512:
        revert with 0, 'SafeMath: addition overflow'
    userData[msg.sender].field_512 += arg1
    if arg1 + sub_da436167 < sub_da436167:
        revert with 0, 'SafeMath: addition overflow'
    sub_da436167 += arg1
    emit 0x403f18c5: arg1, msg.sender
}



}
