contract main {




// =====================  Runtime code  =====================


#
#  - withdrawAll(uint256 arg1)
#
const SCALE = 1000000000000 * 10^18


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint8 stor101;
uint256 stor151;
uint256 roundTime;
address sub_4f3e7ba6Address;
mapping of struct pools;
mapping of struct users;
uint256 nextPool;

function nextPool() payable {
    return nextPool
}

function sub_4f3e7ba6(?) payable {
    return sub_4f3e7ba6Address
}

function paused() payable {
    return bool(stor101)
}

function owner() payable {
    return owner
}

function pools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(pools[arg1].field_0), 
           pools[arg1].field_0,
           pools[arg1].field_256,
           pools[arg1].field_512,
           pools[arg1].field_768,
           pools[arg1].field_1024
}

function users(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return users[arg1][arg2].field_0, users[arg1][arg2].field_256
}

function roundTime() payable {
    return roundTime
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

function setRoundTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x591d85ff: roundTime, arg1
    roundTime = arg1
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

function sub_5e3df141(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not nextPool + 1:
        revert with 0, 17
    nextPool++
    pools[stor205].field_0 = 1
    pools[stor205].field_8 = address(arg1)
    if nextPool < 1:
        revert with 0, 17
    emit 0xc152e0e9: nextPool - 1, address(arg1)
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor101 = 0
    stor151 = 1
    sub_4f3e7ba6Address = arg1
    nextPool = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp > pools[arg1].field_1024:
        if not pools[arg1].field_256:
            pools[arg1].field_1024 = block.timestamp
        else:
            if not pools[arg1].field_512:
                pools[arg1].field_1024 = block.timestamp
            else:
                if block.timestamp < pools[arg1].field_1024:
                    revert with 0, 17
                if block.timestamp - pools[arg1].field_1024 and pools[arg1].field_512 > -1 / block.timestamp - pools[arg1].field_1024:
                    revert with 0, 17
                staticcall pools[arg1].field_8.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512) > ext_call.return_data[0]:
                    if ext_call.return_data[0] and 1000000000000 * 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not pools[arg1].field_256:
                        revert with 0, 18
                    if pools[arg1].field_768 > !(1000000000000 * 10^18 * ext_call.return_data[0] / pools[arg1].field_256):
                        revert with 0, 17
                    pools[arg1].field_768 += 1000000000000 * 10^18 * ext_call.return_data[0] / pools[arg1].field_256
                else:
                    if (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512) and 1000000000000 * 10^18 > -1 / (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512):
                        revert with 0, 17
                    if not pools[arg1].field_256:
                        revert with 0, 18
                    if pools[arg1].field_768 > !((1000000000000 * 10^18 * block.timestamp * pools[arg1].field_512) - (1000000000000 * 10^18 * pools[arg1].field_1024 * pools[arg1].field_512) / pools[arg1].field_256):
                        revert with 0, 17
                    pools[arg1].field_768 += (1000000000000 * 10^18 * block.timestamp * pools[arg1].field_512) - (1000000000000 * 10^18 * pools[arg1].field_1024 * pools[arg1].field_512) / pools[arg1].field_256
                pools[arg1].field_1024 = block.timestamp
                emit PoolUpdated(arg1, pools[arg1].field_768);
}

function setRewardSpeed(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if block.timestamp > pools[arg1].field_1024:
        if not pools[arg1].field_256:
            pools[arg1].field_1024 = block.timestamp
        else:
            if not pools[arg1].field_512:
                pools[arg1].field_1024 = block.timestamp
            else:
                if block.timestamp < pools[arg1].field_1024:
                    revert with 0, 17
                if block.timestamp - pools[arg1].field_1024 and pools[arg1].field_512 > -1 / block.timestamp - pools[arg1].field_1024:
                    revert with 0, 17
                staticcall pools[arg1].field_8.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512) > ext_call.return_data[0]:
                    if ext_call.return_data[0] and 1000000000000 * 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not pools[arg1].field_256:
                        revert with 0, 18
                    if pools[arg1].field_768 > !(1000000000000 * 10^18 * ext_call.return_data[0] / pools[arg1].field_256):
                        revert with 0, 17
                    pools[arg1].field_768 += 1000000000000 * 10^18 * ext_call.return_data[0] / pools[arg1].field_256
                else:
                    if (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512) and 1000000000000 * 10^18 > -1 / (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512):
                        revert with 0, 17
                    if not pools[arg1].field_256:
                        revert with 0, 18
                    if pools[arg1].field_768 > !((1000000000000 * 10^18 * block.timestamp * pools[arg1].field_512) - (1000000000000 * 10^18 * pools[arg1].field_1024 * pools[arg1].field_512) / pools[arg1].field_256):
                        revert with 0, 17
                    pools[arg1].field_768 += (1000000000000 * 10^18 * block.timestamp * pools[arg1].field_512) - (1000000000000 * 10^18 * pools[arg1].field_1024 * pools[arg1].field_512) / pools[arg1].field_256
                pools[arg1].field_1024 = block.timestamp
                emit PoolUpdated(arg1, pools[arg1].field_768);
    staticcall pools[arg1].field_8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if roundTime and arg2 > -1 / roundTime:
        revert with 0, 17
    if roundTime * arg2 > ext_call.return_data[0]:
        revert with 1486950632
    pools[arg1].field_512 = arg2
    emit 0x1daaf901: arg1, arg2
}

function pendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not pools[arg1].field_1024:
        return 0
    if block.timestamp < pools[arg1].field_1024:
        return 0
    if not -pools[arg1].field_256:
        return 0
    if block.timestamp < pools[arg1].field_1024:
        revert with 0, 17
    if block.timestamp - pools[arg1].field_1024 and pools[arg1].field_512 > -1 / block.timestamp - pools[arg1].field_1024:
        revert with 0, 17
    staticcall pools[arg1].field_8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512) > ext_call.return_data[0]:
        if ext_call.return_data[0] and 1000000000000 * 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not pools[arg1].field_256:
            revert with 0, 18
        if pools[arg1].field_768 > !(1000000000000 * 10^18 * ext_call.return_data[0] / pools[arg1].field_256):
            revert with 0, 17
        if users[arg1][address(arg2)].field_0 and pools[arg1].field_768 + (1000000000000 * 10^18 * ext_call.return_data[0] / pools[arg1].field_256) > -1 / users[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (pools[arg1].field_768 * users[arg1][address(arg2)].field_0) + (1000000000000 * 10^18 * ext_call.return_data[0] / pools[arg1].field_256 * users[arg1][address(arg2)].field_0) / 1000000000000 * 10^18 < users[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((pools[arg1].field_768 * users[arg1][address(arg2)].field_0) + (1000000000000 * 10^18 * ext_call.return_data[0] / pools[arg1].field_256 * users[arg1][address(arg2)].field_0) / 1000000000000 * 10^18) - users[arg1][address(arg2)].field_256)
    if (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512) and 1000000000000 * 10^18 > -1 / (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512):
        revert with 0, 17
    if not pools[arg1].field_256:
        revert with 0, 18
    if pools[arg1].field_768 > !((1000000000000 * 10^18 * block.timestamp * pools[arg1].field_512) - (1000000000000 * 10^18 * pools[arg1].field_1024 * pools[arg1].field_512) / pools[arg1].field_256):
        revert with 0, 17
    if users[arg1][address(arg2)].field_0 and pools[arg1].field_768 + ((1000000000000 * 10^18 * block.timestamp * pools[arg1].field_512) - (1000000000000 * 10^18 * pools[arg1].field_1024 * pools[arg1].field_512) / pools[arg1].field_256) > -1 / users[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (pools[arg1].field_768 * users[arg1][address(arg2)].field_0) + ((1000000000000 * 10^18 * block.timestamp * pools[arg1].field_512) - (1000000000000 * 10^18 * pools[arg1].field_1024 * pools[arg1].field_512) / pools[arg1].field_256 * users[arg1][address(arg2)].field_0) / 1000000000000 * 10^18 < users[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((pools[arg1].field_768 * users[arg1][address(arg2)].field_0) + ((1000000000000 * 10^18 * block.timestamp * pools[arg1].field_512) - (1000000000000 * 10^18 * pools[arg1].field_1024 * pools[arg1].field_512) / pools[arg1].field_256 * users[arg1][address(arg2)].field_0) / 1000000000000 * 10^18) - users[arg1][address(arg2)].field_256)
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor151 - 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if not -arg2:
        revert with 516440289
    if arg2 > users[arg1][msg.sender].field_0:
        revert with 1146971021
    if block.timestamp <= pools[arg1].field_1024:
        if pools[arg1].field_768 and users[arg1][msg.sender].field_0 > -1 / pools[arg1].field_768:
            revert with 0, 17
        if pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18 < users[arg1][msg.sender].field_256:
            revert with 0, 17
        mem[100] = this.address
        staticcall pools[arg1].field_8.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 132] = msg.sender
        if (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 164] = (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(pools[arg1].field_8):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0
            mem[ceil32(return_data.size) + 328] = 0
            call pools[arg1].field_8 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
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
            emit Harvest(msg.sender, arg1, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256);
        else:
            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(pools[arg1].field_8):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 328] = 0
            call pools[arg1].field_8 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
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
            emit Harvest(msg.sender, arg1, ext_call.return_data[0]);
    else:
        if not pools[arg1].field_256:
            pools[arg1].field_1024 = block.timestamp
            if pools[arg1].field_768 and users[arg1][msg.sender].field_0 > -1 / pools[arg1].field_768:
                revert with 0, 17
            if pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18 < users[arg1][msg.sender].field_256:
                revert with 0, 17
            mem[100] = this.address
            staticcall pools[arg1].field_8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[ceil32(return_data.size) + 132] = msg.sender
            if (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 164] = (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(pools[arg1].field_8):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0
                mem[ceil32(return_data.size) + 328] = 0
                call pools[arg1].field_8 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
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
                emit Harvest(msg.sender, arg1, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256);
            else:
                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(pools[arg1].field_8):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 328] = 0
                call pools[arg1].field_8 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
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
                emit Harvest(msg.sender, arg1, ext_call.return_data[0]);
        else:
            if not pools[arg1].field_512:
                pools[arg1].field_1024 = block.timestamp
                if pools[arg1].field_768 and users[arg1][msg.sender].field_0 > -1 / pools[arg1].field_768:
                    revert with 0, 17
                if pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18 < users[arg1][msg.sender].field_256:
                    revert with 0, 17
                mem[100] = this.address
                staticcall pools[arg1].field_8.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(return_data.size) + 132] = msg.sender
                if (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 164] = (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(pools[arg1].field_8):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call pools[arg1].field_8 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
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
                    emit Harvest(msg.sender, arg1, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256);
                else:
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(pools[arg1].field_8):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call pools[arg1].field_8 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
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
                    emit Harvest(msg.sender, arg1, ext_call.return_data[0]);
            else:
                if block.timestamp < pools[arg1].field_1024:
                    revert with 0, 17
                if block.timestamp - pools[arg1].field_1024 and pools[arg1].field_512 > -1 / block.timestamp - pools[arg1].field_1024:
                    revert with 0, 17
                mem[100] = this.address
                staticcall pools[arg1].field_8.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512) > ext_call.return_data[0]:
                    if ext_call.return_data[0] and 1000000000000 * 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not pools[arg1].field_256:
                        revert with 0, 18
                    if pools[arg1].field_768 > !(1000000000000 * 10^18 * ext_call.return_data[0] / pools[arg1].field_256):
                        revert with 0, 17
                    pools[arg1].field_768 += 1000000000000 * 10^18 * ext_call.return_data[0] / pools[arg1].field_256
                else:
                    if (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512) and 1000000000000 * 10^18 > -1 / (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512):
                        revert with 0, 17
                    if not pools[arg1].field_256:
                        revert with 0, 18
                    if pools[arg1].field_768 > !((1000000000000 * 10^18 * block.timestamp * pools[arg1].field_512) - (1000000000000 * 10^18 * pools[arg1].field_1024 * pools[arg1].field_512) / pools[arg1].field_256):
                        revert with 0, 17
                    pools[arg1].field_768 += (1000000000000 * 10^18 * block.timestamp * pools[arg1].field_512) - (1000000000000 * 10^18 * pools[arg1].field_1024 * pools[arg1].field_512) / pools[arg1].field_256
                pools[arg1].field_1024 = block.timestamp
                mem[ceil32(return_data.size) + 128] = pools[arg1].field_768
                emit PoolUpdated(arg1, pools[arg1].field_768);
                if pools[arg1].field_768 and users[arg1][msg.sender].field_0 > -1 / pools[arg1].field_768:
                    revert with 0, 17
                if pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18 < users[arg1][msg.sender].field_256:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 100] = this.address
                staticcall pools[arg1].field_8.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                if (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 164] = (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(pools[arg1].field_8):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call pools[arg1].field_8 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                            if not mem[(2 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit Harvest(msg.sender, arg1, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256);
                else:
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(pools[arg1].field_8):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call pools[arg1].field_8 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                            if not mem[(2 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit Harvest(msg.sender, arg1, ext_call.return_data[0]);
    if pools[arg1].field_256 < arg2:
        revert with 0, 17
    pools[arg1].field_256 -= arg2
    if users[arg1][msg.sender].field_0 < arg2:
        revert with 0, 17
    users[arg1][msg.sender].field_0 -= arg2
    if users[arg1][msg.sender].field_0 and pools[arg1].field_768 > -1 / users[arg1][msg.sender].field_0:
        revert with 0, 17
    users[arg1][msg.sender].field_256 = users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18
    require ext_code.size(sub_4f3e7ba6Address)
    call sub_4f3e7ba6Address.0x97b85b6a with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(msg.sender, arg1, arg2);
    stor151 = 1
}

function harvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor151 - 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if stor101:
        revert with 0, 'Pausable: paused'
    if block.timestamp <= pools[arg1].field_1024:
        mem[128] = pools[arg1].field_8
        mem[160] = pools[arg1].field_256
        mem[192] = pools[arg1].field_512
        mem[224] = pools[arg1].field_768
        mem[256] = pools[arg1].field_1024
        if users[arg1][msg.sender].field_0 and pools[arg1].field_768 > -1 / users[arg1][msg.sender].field_0:
            revert with 0, 17
        if users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18 < users[arg1][msg.sender].field_256:
            revert with 0, 17
        if users[arg1][msg.sender].field_0 and pools[arg1].field_768 > -1 / users[arg1][msg.sender].field_0:
            revert with 0, 17
        users[arg1][msg.sender].field_256 = users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18
        mem[292] = this.address
        staticcall pools[arg1].field_8.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 324] = arg2
        if (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 356] = (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256
            mem[ceil32(return_data.size) + 288] = 68
            mem[ceil32(return_data.size) + 324 len 28] = address(arg2) << 64
            mem[ceil32(return_data.size) + 320 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 388] = 32
            mem[ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(pools[arg1].field_8):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 452 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0
            mem[ceil32(return_data.size) + 520] = 0
            call pools[arg1].field_8 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if pools[arg1].field_0:
                        revert with memory
                          from 128
                           len bool(pools[arg1].field_0)
                    revert with 0, 'SafeERC20: low-level call failed'
                if pools[arg1].field_0:
                    require bool(pools[arg1].field_0) >= 32
                    require pools[arg1].field_8 == bool(pools[arg1].field_8)
                    if not pools[arg1].field_8:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 484] == bool(mem[ceil32(return_data.size) + 484])
                    if not mem[ceil32(return_data.size) + 484]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Harvest(msg.sender, arg1, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256);
        else:
            mem[ceil32(return_data.size) + 356] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 288] = 68
            mem[ceil32(return_data.size) + 324 len 28] = address(arg2) << 64
            mem[ceil32(return_data.size) + 320 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 388] = 32
            mem[ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(pools[arg1].field_8):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 452 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 520] = 0
            call pools[arg1].field_8 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if pools[arg1].field_0:
                        revert with memory
                          from 128
                           len bool(pools[arg1].field_0)
                    revert with 0, 'SafeERC20: low-level call failed'
                if pools[arg1].field_0:
                    require bool(pools[arg1].field_0) >= 32
                    require pools[arg1].field_8 == bool(pools[arg1].field_8)
                    if not pools[arg1].field_8:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 484] == bool(mem[ceil32(return_data.size) + 484])
                    if not mem[ceil32(return_data.size) + 484]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Harvest(msg.sender, arg1, ext_call.return_data[0]);
    else:
        if not pools[arg1].field_256:
            pools[arg1].field_1024 = block.timestamp
            mem[128] = pools[arg1].field_8
            mem[160] = pools[arg1].field_256
            mem[192] = pools[arg1].field_512
            mem[224] = pools[arg1].field_768
            mem[256] = pools[arg1].field_1024
            if users[arg1][msg.sender].field_0 and pools[arg1].field_768 > -1 / users[arg1][msg.sender].field_0:
                revert with 0, 17
            if users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18 < users[arg1][msg.sender].field_256:
                revert with 0, 17
            if users[arg1][msg.sender].field_0 and pools[arg1].field_768 > -1 / users[arg1][msg.sender].field_0:
                revert with 0, 17
            users[arg1][msg.sender].field_256 = users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18
            mem[292] = this.address
            staticcall pools[arg1].field_8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[ceil32(return_data.size) + 324] = arg2
            if (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 356] = (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256
                mem[ceil32(return_data.size) + 288] = 68
                mem[ceil32(return_data.size) + 324 len 28] = address(arg2) << 64
                mem[ceil32(return_data.size) + 320 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 388] = 32
                mem[ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(pools[arg1].field_8):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 452 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0
                mem[ceil32(return_data.size) + 520] = 0
                call pools[arg1].field_8 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if pools[arg1].field_0:
                            revert with memory
                              from 128
                               len bool(pools[arg1].field_0)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if pools[arg1].field_0:
                        require bool(pools[arg1].field_0) >= 32
                        require pools[arg1].field_8 == bool(pools[arg1].field_8)
                        if not pools[arg1].field_8:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 484] == bool(mem[ceil32(return_data.size) + 484])
                        if not mem[ceil32(return_data.size) + 484]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Harvest(msg.sender, arg1, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256);
            else:
                mem[ceil32(return_data.size) + 356] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 288] = 68
                mem[ceil32(return_data.size) + 324 len 28] = address(arg2) << 64
                mem[ceil32(return_data.size) + 320 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 388] = 32
                mem[ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(pools[arg1].field_8):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 452 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 520] = 0
                call pools[arg1].field_8 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if pools[arg1].field_0:
                            revert with memory
                              from 128
                               len bool(pools[arg1].field_0)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if pools[arg1].field_0:
                        require bool(pools[arg1].field_0) >= 32
                        require pools[arg1].field_8 == bool(pools[arg1].field_8)
                        if not pools[arg1].field_8:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 484] == bool(mem[ceil32(return_data.size) + 484])
                        if not mem[ceil32(return_data.size) + 484]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Harvest(msg.sender, arg1, ext_call.return_data[0]);
        else:
            if not pools[arg1].field_512:
                pools[arg1].field_1024 = block.timestamp
                mem[128] = pools[arg1].field_8
                mem[160] = pools[arg1].field_256
                mem[192] = pools[arg1].field_512
                mem[224] = pools[arg1].field_768
                mem[256] = pools[arg1].field_1024
                if users[arg1][msg.sender].field_0 and pools[arg1].field_768 > -1 / users[arg1][msg.sender].field_0:
                    revert with 0, 17
                if users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18 < users[arg1][msg.sender].field_256:
                    revert with 0, 17
                if users[arg1][msg.sender].field_0 and pools[arg1].field_768 > -1 / users[arg1][msg.sender].field_0:
                    revert with 0, 17
                users[arg1][msg.sender].field_256 = users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18
                mem[292] = this.address
                staticcall pools[arg1].field_8.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(return_data.size) + 324] = arg2
                if (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 356] = (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256
                    mem[ceil32(return_data.size) + 288] = 68
                    mem[ceil32(return_data.size) + 324 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 388] = 32
                    mem[ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(pools[arg1].field_8):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 452 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0
                    mem[ceil32(return_data.size) + 520] = 0
                    call pools[arg1].field_8 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if pools[arg1].field_0:
                                revert with memory
                                  from 128
                                   len bool(pools[arg1].field_0)
                            revert with 0, 'SafeERC20: low-level call failed'
                        if pools[arg1].field_0:
                            require bool(pools[arg1].field_0) >= 32
                            require pools[arg1].field_8 == bool(pools[arg1].field_8)
                            if not pools[arg1].field_8:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 484] == bool(mem[ceil32(return_data.size) + 484])
                            if not mem[ceil32(return_data.size) + 484]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit Harvest(msg.sender, arg1, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256);
                else:
                    mem[ceil32(return_data.size) + 356] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 288] = 68
                    mem[ceil32(return_data.size) + 324 len 28] = address(arg2) << 64
                    mem[ceil32(return_data.size) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 388] = 32
                    mem[ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(pools[arg1].field_8):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 452 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 520] = 0
                    call pools[arg1].field_8 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if pools[arg1].field_0:
                                revert with memory
                                  from 128
                                   len bool(pools[arg1].field_0)
                            revert with 0, 'SafeERC20: low-level call failed'
                        if pools[arg1].field_0:
                            require bool(pools[arg1].field_0) >= 32
                            require pools[arg1].field_8 == bool(pools[arg1].field_8)
                            if not pools[arg1].field_8:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 484] == bool(mem[ceil32(return_data.size) + 484])
                            if not mem[ceil32(return_data.size) + 484]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit Harvest(msg.sender, arg1, ext_call.return_data[0]);
            else:
                if block.timestamp < pools[arg1].field_1024:
                    revert with 0, 17
                if block.timestamp - pools[arg1].field_1024 and pools[arg1].field_512 > -1 / block.timestamp - pools[arg1].field_1024:
                    revert with 0, 17
                mem[100] = this.address
                staticcall pools[arg1].field_8.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512) > ext_call.return_data[0]:
                    if ext_call.return_data[0] and 1000000000000 * 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not pools[arg1].field_256:
                        revert with 0, 18
                    if pools[arg1].field_768 > !(1000000000000 * 10^18 * ext_call.return_data[0] / pools[arg1].field_256):
                        revert with 0, 17
                    pools[arg1].field_768 += 1000000000000 * 10^18 * ext_call.return_data[0] / pools[arg1].field_256
                else:
                    if (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512) and 1000000000000 * 10^18 > -1 / (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512):
                        revert with 0, 17
                    if not pools[arg1].field_256:
                        revert with 0, 18
                    if pools[arg1].field_768 > !((1000000000000 * 10^18 * block.timestamp * pools[arg1].field_512) - (1000000000000 * 10^18 * pools[arg1].field_1024 * pools[arg1].field_512) / pools[arg1].field_256):
                        revert with 0, 17
                    pools[arg1].field_768 += (1000000000000 * 10^18 * block.timestamp * pools[arg1].field_512) - (1000000000000 * 10^18 * pools[arg1].field_1024 * pools[arg1].field_512) / pools[arg1].field_256
                pools[arg1].field_1024 = block.timestamp
                emit PoolUpdated(arg1, pools[arg1].field_768);
                mem[ceil32(return_data.size) + 96] = bool(pools[arg1].field_0)
                mem[ceil32(return_data.size) + 128] = pools[arg1].field_8
                mem[ceil32(return_data.size) + 160] = pools[arg1].field_256
                mem[ceil32(return_data.size) + 192] = pools[arg1].field_512
                mem[ceil32(return_data.size) + 224] = pools[arg1].field_768
                mem[ceil32(return_data.size) + 256] = pools[arg1].field_1024
                if users[arg1][msg.sender].field_0 and pools[arg1].field_768 > -1 / users[arg1][msg.sender].field_0:
                    revert with 0, 17
                if users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18 < users[arg1][msg.sender].field_256:
                    revert with 0, 17
                if users[arg1][msg.sender].field_0 and pools[arg1].field_768 > -1 / users[arg1][msg.sender].field_0:
                    revert with 0, 17
                users[arg1][msg.sender].field_256 = users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18
                mem[ceil32(return_data.size) + 292] = this.address
                staticcall pools[arg1].field_8.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 324] = arg2
                if (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 356] = (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256
                    mem[(2 * ceil32(return_data.size)) + 288] = 68
                    mem[(2 * ceil32(return_data.size)) + 324 len 28] = address(arg2) << 64
                    mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 388] = 32
                    mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(pools[arg1].field_8):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call pools[arg1].field_8 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 484] == bool(mem[(2 * ceil32(return_data.size)) + 484])
                            if not mem[(2 * ceil32(return_data.size)) + 484]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit Harvest(msg.sender, arg1, (users[arg1][msg.sender].field_0 * pools[arg1].field_768 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256);
                else:
                    mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 288] = 68
                    mem[(2 * ceil32(return_data.size)) + 324 len 28] = address(arg2) << 64
                    mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 388] = 32
                    mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(pools[arg1].field_8):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 520] = 0
                    call pools[arg1].field_8 with:
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
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 484] == bool(mem[(2 * ceil32(return_data.size)) + 484])
                            if not mem[(2 * ceil32(return_data.size)) + 484]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit Harvest(msg.sender, arg1, ext_call.return_data[0]);
    stor151 = 1
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor151 - 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if not pools[arg1].field_0:
        revert with 1252297345
    if not -arg2:
        revert with 516440289
    mem[100] = msg.sender
    staticcall sub_4f3e7ba6Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 1146971021
    if block.timestamp <= pools[arg1].field_1024:
        mem[ceil32(return_data.size) + 132] = arg2
        require ext_code.size(sub_4f3e7ba6Address)
        call sub_4f3e7ba6Address.0x78ad54c2 with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if users[arg1][msg.sender].field_0:
            if pools[arg1].field_768 and users[arg1][msg.sender].field_0 > -1 / pools[arg1].field_768:
                revert with 0, 17
            if pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18 < users[arg1][msg.sender].field_256:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = this.address
            staticcall pools[arg1].field_8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            if (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 164] = (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(pools[arg1].field_8):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call pools[arg1].field_8 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                        if not mem[(2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Harvest(msg.sender, arg1, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256);
            else:
                mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(pools[arg1].field_8):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call pools[arg1].field_8 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                        if not mem[(2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Harvest(msg.sender, arg1, ext_call.return_data[0]);
    else:
        if not pools[arg1].field_256:
            pools[arg1].field_1024 = block.timestamp
            mem[ceil32(return_data.size) + 132] = arg2
            require ext_code.size(sub_4f3e7ba6Address)
            call sub_4f3e7ba6Address.0x78ad54c2 with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if users[arg1][msg.sender].field_0:
                if pools[arg1].field_768 and users[arg1][msg.sender].field_0 > -1 / pools[arg1].field_768:
                    revert with 0, 17
                if pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18 < users[arg1][msg.sender].field_256:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 100] = this.address
                staticcall pools[arg1].field_8.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                if (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 164] = (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(pools[arg1].field_8):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call pools[arg1].field_8 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                            if not uint32(msg.sender), mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                            if not mem[(2 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit Harvest(msg.sender, arg1, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256);
                else:
                    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(pools[arg1].field_8):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call pools[arg1].field_8 with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                            if not uint32(msg.sender), mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                            if not mem[(2 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit Harvest(msg.sender, arg1, ext_call.return_data[0]);
        else:
            if not pools[arg1].field_512:
                pools[arg1].field_1024 = block.timestamp
                mem[ceil32(return_data.size) + 132] = arg2
                require ext_code.size(sub_4f3e7ba6Address)
                call sub_4f3e7ba6Address.0x78ad54c2 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if users[arg1][msg.sender].field_0:
                    if pools[arg1].field_768 and users[arg1][msg.sender].field_0 > -1 / pools[arg1].field_768:
                        revert with 0, 17
                    if pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18 < users[arg1][msg.sender].field_256:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 100] = this.address
                    staticcall pools[arg1].field_8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                    if (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        mem[(2 * ceil32(return_data.size)) + 164] = (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(pools[arg1].field_8):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call pools[arg1].field_8 with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                                if not uint32(msg.sender), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                                if not mem[(2 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit Harvest(msg.sender, arg1, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256);
                    else:
                        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(pools[arg1].field_8):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call pools[arg1].field_8 with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                                if not uint32(msg.sender), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                                if not mem[(2 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit Harvest(msg.sender, arg1, ext_call.return_data[0]);
            else:
                if block.timestamp < pools[arg1].field_1024:
                    revert with 0, 17
                if block.timestamp - pools[arg1].field_1024 and pools[arg1].field_512 > -1 / block.timestamp - pools[arg1].field_1024:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 100] = this.address
                staticcall pools[arg1].field_8.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512) > ext_call.return_data[0]:
                    if ext_call.return_data[0] and 1000000000000 * 10^18 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not pools[arg1].field_256:
                        revert with 0, 18
                    if pools[arg1].field_768 > !(1000000000000 * 10^18 * ext_call.return_data[0] / pools[arg1].field_256):
                        revert with 0, 17
                    pools[arg1].field_768 += 1000000000000 * 10^18 * ext_call.return_data[0] / pools[arg1].field_256
                else:
                    if (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512) and 1000000000000 * 10^18 > -1 / (block.timestamp * pools[arg1].field_512) - (pools[arg1].field_1024 * pools[arg1].field_512):
                        revert with 0, 17
                    if not pools[arg1].field_256:
                        revert with 0, 18
                    if pools[arg1].field_768 > !((1000000000000 * 10^18 * block.timestamp * pools[arg1].field_512) - (1000000000000 * 10^18 * pools[arg1].field_1024 * pools[arg1].field_512) / pools[arg1].field_256):
                        revert with 0, 17
                    pools[arg1].field_768 += (1000000000000 * 10^18 * block.timestamp * pools[arg1].field_512) - (1000000000000 * 10^18 * pools[arg1].field_1024 * pools[arg1].field_512) / pools[arg1].field_256
                pools[arg1].field_1024 = block.timestamp
                emit PoolUpdated(arg1, pools[arg1].field_768);
                mem[(2 * ceil32(return_data.size)) + 132] = arg2
                require ext_code.size(sub_4f3e7ba6Address)
                call sub_4f3e7ba6Address.0x78ad54c2 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if users[arg1][msg.sender].field_0:
                    if pools[arg1].field_768 and users[arg1][msg.sender].field_0 > -1 / pools[arg1].field_768:
                        revert with 0, 17
                    if pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18 < users[arg1][msg.sender].field_256:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 100] = this.address
                    staticcall pools[arg1].field_8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                    if (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                        mem[(4 * ceil32(return_data.size)) + 164] = (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256
                        mem[(4 * ceil32(return_data.size)) + 96] = 68
                        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(4 * ceil32(return_data.size)) + 196] = 32
                        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(pools[arg1].field_8):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0
                        mem[(4 * ceil32(return_data.size)) + 328] = 0
                        call pools[arg1].field_8 with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                                if not uint32(msg.sender), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                                if not mem[(4 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit Harvest(msg.sender, arg1, (pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18) - users[arg1][msg.sender].field_256);
                    else:
                        mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 96] = 68
                        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                        mem[(4 * ceil32(return_data.size)) + 196] = 32
                        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(pools[arg1].field_8):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                        mem[(4 * ceil32(return_data.size)) + 328] = 0
                        call pools[arg1].field_8 with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                                if not uint32(msg.sender), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                                if not mem[(4 * ceil32(return_data.size)) + 292]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit Harvest(msg.sender, arg1, ext_call.return_data[0]);
    if pools[arg1].field_256 > !arg2:
        revert with 0, 17
    pools[arg1].field_256 += arg2
    if users[arg1][msg.sender].field_0 > !arg2:
        revert with 0, 17
    users[arg1][msg.sender].field_0 += arg2
    if pools[arg1].field_768 and users[arg1][msg.sender].field_0 > -1 / pools[arg1].field_768:
        revert with 0, 17
    users[arg1][msg.sender].field_256 = pools[arg1].field_768 * users[arg1][msg.sender].field_0 / 1000000000000 * 10^18
    emit Deposit(msg.sender, arg1, arg2);
    stor151 = 1
}



}
