contract main {




// =====================  Runtime code  =====================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
uint8 stor5; offset 8
uint8 stor5; offset 16
uint8 stor5; offset 24
mapping of uint256 love;

function love(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return love[arg1]
}

function _fallback() payable {
    revert
}

function getHunger() payable {
    if block.number < stor1:
        revert with 0, 17
    if uint8(stor5.field_0) > !(block.number - stor1 / 50):
        revert with 0, 17
    return (uint8(stor5.field_0) + (block.number - stor1 / 50))
}

function getBoredom() payable {
    if block.number < stor3:
        revert with 0, 17
    if uint8(stor5.field_16) > !(block.number - stor3 / 50):
        revert with 0, 17
    return (uint8(stor5.field_16) + (block.number - stor3 / 50))
}

function getSleepiness() payable {
    if block.number < stor4:
        revert with 0, 17
    if uint8(stor5.field_24) > !(block.number - stor4 / 50):
        revert with 0, 17
    return (uint8(stor5.field_24) + (block.number - stor4 / 50))
}

function getUncleanliness() payable {
    if block.number < stor2:
        revert with 0, 17
    if uint8(stor5.field_8) > !(block.number - stor2 / 50):
        revert with 0, 17
    return (uint8(stor5.field_8) + (block.number - stor2 / 50))
}

function getAlive() payable {
    if block.number < stor1:
        revert with 0, 17
    if uint8(stor5.field_0) > !(block.number - stor1 / 50):
        revert with 0, 17
    if uint8(stor5.field_0) + (block.number - stor1 / 50) >= 101:
        return (uint8(stor5.field_0) + (block.number - stor1 / 50) < 101)
    if block.number < stor2:
        revert with 0, 17
    if uint8(stor5.field_8) > !(block.number - stor2 / 50):
        revert with 0, 17
    if uint8(stor5.field_8) + (block.number - stor2 / 50) >= 101:
        return (uint8(stor5.field_8) + (block.number - stor2 / 50) < 101)
    if block.number < stor3:
        revert with 0, 17
    if uint8(stor5.field_16) > !(block.number - stor3 / 50):
        revert with 0, 17
    if uint8(stor5.field_16) + (block.number - stor3 / 50) >= 101:
        return (uint8(stor5.field_16) + (block.number - stor3 / 50) < 101)
    if block.number < stor4:
        revert with 0, 17
    if uint8(stor5.field_24) > !(block.number - stor4 / 50):
        revert with 0, 17
    return (uint8(stor5.field_24) + (block.number - stor4 / 50) < 101)
}

function clean() payable {
    if block.number < stor1:
        revert with 0, 17
    if uint8(stor5.field_0) > !(block.number - stor1 / 50):
        revert with 0, 17
    if uint8(stor5.field_0) + (block.number - stor1 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor2:
        revert with 0, 17
    if uint8(stor5.field_8) > !(block.number - stor2 / 50):
        revert with 0, 17
    if uint8(stor5.field_8) + (block.number - stor2 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor3:
        revert with 0, 17
    if uint8(stor5.field_16) > !(block.number - stor3 / 50):
        revert with 0, 17
    if uint8(stor5.field_16) + (block.number - stor3 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor4:
        revert with 0, 17
    if uint8(stor5.field_24) > !(block.number - stor4 / 50):
        revert with 0, 17
    if uint8(stor5.field_24) + (block.number - stor4 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor2:
        revert with 0, 17
    if uint8(stor5.field_8) > !(block.number - stor2 / 50):
        revert with 0, 17
    if uint8(stor5.field_8) + (block.number - stor2 / 50) <= 0:
        revert with 0, 'i dont need a bath'
    stor2 = block.number
    uint8(stor5.field_8) = 0
    if love[address(msg.sender)] > -2:
        revert with 0, 17
    love[address(msg.sender)]++
    emit CaretakerLoved(msg.sender, 1);
}

function sleep() payable {
    if block.number < stor1:
        revert with 0, 17
    if uint8(stor5.field_0) > !(block.number - stor1 / 50):
        revert with 0, 17
    if uint8(stor5.field_0) + (block.number - stor1 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor2:
        revert with 0, 17
    if uint8(stor5.field_8) > !(block.number - stor2 / 50):
        revert with 0, 17
    if uint8(stor5.field_8) + (block.number - stor2 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor3:
        revert with 0, 17
    if uint8(stor5.field_16) > !(block.number - stor3 / 50):
        revert with 0, 17
    if uint8(stor5.field_16) + (block.number - stor3 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor4:
        revert with 0, 17
    if uint8(stor5.field_24) > !(block.number - stor4 / 50):
        revert with 0, 17
    if uint8(stor5.field_24) + (block.number - stor4 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor2:
        revert with 0, 17
    if uint8(stor5.field_8) > !(block.number - stor2 / 50):
        revert with 0, 17
    if uint8(stor5.field_8) + (block.number - stor2 / 50) >= 80:
        revert with 0, 'im feeling too gross to sleep'
    if block.number < stor4:
        revert with 0, 17
    if uint8(stor5.field_24) > !(block.number - stor4 / 50):
        revert with 0, 17
    if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 0:
        revert with 0, 'im not feeling sleepy'
    stor4 = block.number
    uint8(stor5.field_24) = 0
    if uint8(stor5.field_8) > 250:
        revert with 0, 17
    uint8(stor5.field_8) = uint8(uint8(stor5.field_8) + 5)
    if love[address(msg.sender)] > -2:
        revert with 0, 17
    love[address(msg.sender)]++
    emit CaretakerLoved(msg.sender, 1);
}

function feed() payable {
    if block.number < stor1:
        revert with 0, 17
    if uint8(stor5.field_0) > !(block.number - stor1 / 50):
        revert with 0, 17
    if uint8(stor5.field_0) + (block.number - stor1 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor2:
        revert with 0, 17
    if uint8(stor5.field_8) > !(block.number - stor2 / 50):
        revert with 0, 17
    if uint8(stor5.field_8) + (block.number - stor2 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor3:
        revert with 0, 17
    if uint8(stor5.field_16) > !(block.number - stor3 / 50):
        revert with 0, 17
    if uint8(stor5.field_16) + (block.number - stor3 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor4:
        revert with 0, 17
    if uint8(stor5.field_24) > !(block.number - stor4 / 50):
        revert with 0, 17
    if uint8(stor5.field_24) + (block.number - stor4 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor3:
        revert with 0, 17
    if uint8(stor5.field_16) > !(block.number - stor3 / 50):
        revert with 0, 17
    if uint8(stor5.field_16) + (block.number - stor3 / 50) >= 80:
        revert with 0, 'im too tired to eat'
    if block.number < stor2:
        revert with 0, 17
    if uint8(stor5.field_8) > !(block.number - stor2 / 50):
        revert with 0, 17
    if uint8(stor5.field_8) + (block.number - stor2 / 50) >= 80:
        revert with 0, 'im feeling too gross to eat'
    stor1 = block.number
    uint8(stor5.field_0) = 0
    if uint8(stor5.field_16) > 245:
        revert with 0, 17
    uint8(stor5.field_16) = uint8(uint8(stor5.field_16) + 10)
    if uint8(stor5.field_8) > 252:
        revert with 0, 17
    uint8(stor5.field_8) = uint8(uint8(stor5.field_8) + 3)
    if love[address(msg.sender)] > -2:
        revert with 0, 17
    love[address(msg.sender)]++
    emit CaretakerLoved(msg.sender, 1);
}

function play() payable {
    if block.number < stor1:
        revert with 0, 17
    if uint8(stor5.field_0) > !(block.number - stor1 / 50):
        revert with 0, 17
    if uint8(stor5.field_0) + (block.number - stor1 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor2:
        revert with 0, 17
    if uint8(stor5.field_8) > !(block.number - stor2 / 50):
        revert with 0, 17
    if uint8(stor5.field_8) + (block.number - stor2 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor3:
        revert with 0, 17
    if uint8(stor5.field_16) > !(block.number - stor3 / 50):
        revert with 0, 17
    if uint8(stor5.field_16) + (block.number - stor3 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor4:
        revert with 0, 17
    if uint8(stor5.field_24) > !(block.number - stor4 / 50):
        revert with 0, 17
    if uint8(stor5.field_24) + (block.number - stor4 / 50) >= 101:
        revert with 0, 'no longer with us'
    if block.number < stor1:
        revert with 0, 17
    if uint8(stor5.field_0) > !(block.number - stor1 / 50):
        revert with 0, 17
    if uint8(stor5.field_0) + (block.number - stor1 / 50) >= 80:
        revert with 0, 'im too hungry to play'
    if block.number < stor4:
        revert with 0, 17
    if uint8(stor5.field_24) > !(block.number - stor4 / 50):
        revert with 0, 17
    if uint8(stor5.field_24) + (block.number - stor4 / 50) >= 80:
        revert with 0, 'im too sleepy to play'
    if block.number < stor2:
        revert with 0, 17
    if uint8(stor5.field_8) > !(block.number - stor2 / 50):
        revert with 0, 17
    if uint8(stor5.field_8) + (block.number - stor2 / 50) >= 80:
        revert with 0, 'im feeling too gross to play'
    stor3 = block.number
    uint8(stor5.field_16) = 0
    if uint8(stor5.field_0) > 245:
        revert with 0, 17
    uint8(stor5.field_0) = uint8(uint8(stor5.field_0) + 10)
    if uint8(stor5.field_24) > 245:
        revert with 0, 17
    uint8(stor5.field_24) = uint8(uint8(stor5.field_24) + 10)
    if uint8(stor5.field_8) > 250:
        revert with 0, 17
    uint8(stor5.field_8) = uint8(uint8(stor5.field_8) + 5)
    if love[address(msg.sender)] > -2:
        revert with 0, 17
    love[address(msg.sender)]++
    emit CaretakerLoved(msg.sender, 1);
}

function getStatus() payable {
    mem[224] = 2
    mem[256] = 0x676d000000000000000000000000000000000000000000000000000000000000
    mem[96] = 224
    mem[288] = 16
    mem[320] = 0x696d206665656c696e6720677265617400000000000000000000000000000000
    mem[128] = 288
    mem[352] = 8
    mem[384] = 0x616c6c20676f6f64000000000000000000000000000000000000000000000000
    mem[160] = 352
    mem[64] = 480
    mem[416] = 8
    mem[448] = 'i love u' << 192
    mem[192] = 416
    if block.number % 4 >= 4:
        revert with 0, 50
    if block.number < stor1:
        revert with 0, 17
    if uint8(stor5.field_0) > !(block.number - stor1 / 50):
        revert with 0, 17
    if block.number < stor2:
        revert with 0, 17
    if uint8(stor5.field_8) > !(block.number - stor2 / 50):
        revert with 0, 17
    if block.number < stor3:
        revert with 0, 17
    if uint8(stor5.field_16) > !(block.number - stor3 / 50):
        revert with 0, 17
    if block.number < stor4:
        revert with 0, 17
    if uint8(stor5.field_24) > !(block.number - stor4 / 50):
        revert with 0, 17
    if block.number < stor1:
        revert with 0, 17
    if uint8(stor5.field_0) > !(block.number - stor1 / 50):
        revert with 0, 17
    if uint8(stor5.field_0) + (block.number - stor1 / 50) >= 101:
        return 'no longer with us', 0
    if block.number < stor2:
        revert with 0, 17
    if uint8(stor5.field_8) > !(block.number - stor2 / 50):
        revert with 0, 17
    if uint8(stor5.field_8) + (block.number - stor2 / 50) >= 101:
        return 'no longer with us', 0
    if block.number < stor3:
        revert with 0, 17
    if uint8(stor5.field_16) > !(block.number - stor3 / 50):
        revert with 0, 17
    if uint8(stor5.field_16) + (block.number - stor3 / 50) >= 101:
        return 'no longer with us', 0
    if block.number < stor4:
        revert with 0, 17
    if uint8(stor5.field_24) > !(block.number - stor4 / 50):
        revert with 0, 17
    if uint8(stor5.field_24) + (block.number - stor4 / 50) >= 101:
        return 'no longer with us', 0
    if uint8(stor5.field_0) + (block.number - stor1 / 50) <= 50:
        if uint8(stor5.field_8) + (block.number - stor2 / 50) <= 50:
            if uint8(stor5.field_16) + (block.number - stor3 / 50) <= 50:
                if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                    mem[480] = 32
                    _42 = mem[mem[(32 * block.number % 4) + 96]]
                    mem[512] = mem[mem[(32 * block.number % 4) + 96]]
                    mem[544 len ceil32(_42)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_42)]
                    if ceil32(_42) > _42:
                        mem[_42 + 544] = 0
                    return 32, mem[512 len ceil32(_42) + 32]
                if uint8(stor5.field_24) + (block.number - stor4 / 50) > 0:
                    return 'im sleepy', 0
                mem[480] = 32
                _52 = mem[mem[(32 * block.number % 4) + 96]]
                mem[512] = mem[mem[(32 * block.number % 4) + 96]]
                mem[544 len ceil32(_52)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_52)]
                if ceil32(_52) > _52:
                    mem[_52 + 544] = 0
                return 32, mem[512 len ceil32(_52) + 32]
            if uint8(stor5.field_16) + (block.number - stor3 / 50) > 0:
                if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                    return '', 0
                if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_16) + (block.number - stor3 / 50):
                    return '', 0
                return 'im sleepy', 0
            if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                mem[480] = 32
                _54 = mem[mem[(32 * block.number % 4) + 96]]
                mem[512] = mem[mem[(32 * block.number % 4) + 96]]
                mem[544 len ceil32(_54)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_54)]
                if ceil32(_54) > _54:
                    mem[_54 + 544] = 0
                return 32, mem[512 len ceil32(_54) + 32]
            if uint8(stor5.field_24) + (block.number - stor4 / 50) > 0:
                return 'im sleepy', 0
            mem[480] = 32
            _75 = mem[mem[(32 * block.number % 4) + 96]]
            mem[512] = mem[mem[(32 * block.number % 4) + 96]]
            mem[544 len ceil32(_75)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_75)]
            if ceil32(_75) > _75:
                mem[_75 + 544] = 0
            return 32, mem[512 len ceil32(_75) + 32]
        if uint8(stor5.field_8) + (block.number - stor2 / 50) > 0:
            if uint8(stor5.field_16) + (block.number - stor3 / 50) <= 50:
                if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                    return '', 0
                if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_8) + (block.number - stor2 / 50):
                    return '', 0
            else:
                if uint8(stor5.field_16) + (block.number - stor3 / 50) <= uint8(stor5.field_8) + (block.number - stor2 / 50):
                    if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                        return '', 0
                    if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_8) + (block.number - stor2 / 50):
                        return '', 0
                else:
                    if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                        return '', 0
                    if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_16) + (block.number - stor3 / 50):
                        return '', 0
            return 'im sleepy', 0
        if uint8(stor5.field_16) + (block.number - stor3 / 50) <= 50:
            if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                mem[480] = 32
                _58 = mem[mem[(32 * block.number % 4) + 96]]
                mem[512] = mem[mem[(32 * block.number % 4) + 96]]
                mem[544 len ceil32(_58)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_58)]
                if ceil32(_58) > _58:
                    mem[_58 + 544] = 0
                return 32, mem[512 len ceil32(_58) + 32]
            if uint8(stor5.field_24) + (block.number - stor4 / 50) > 0:
                return 'im sleepy', 0
            mem[480] = 32
            _79 = mem[mem[(32 * block.number % 4) + 96]]
            mem[512] = mem[mem[(32 * block.number % 4) + 96]]
            mem[544 len ceil32(_79)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_79)]
            if ceil32(_79) > _79:
                mem[_79 + 544] = 0
            return 32, mem[512 len ceil32(_79) + 32]
        if uint8(stor5.field_16) + (block.number - stor3 / 50) > 0:
            if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                return '', 0
            if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_16) + (block.number - stor3 / 50):
                return '', 0
            return 'im sleepy', 0
        if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
            mem[480] = 32
            _81 = mem[mem[(32 * block.number % 4) + 96]]
            mem[512] = mem[mem[(32 * block.number % 4) + 96]]
            mem[544 len ceil32(_81)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_81)]
            if ceil32(_81) > _81:
                mem[_81 + 544] = 0
            return 32, mem[512 len ceil32(_81) + 32]
        if uint8(stor5.field_24) + (block.number - stor4 / 50) > 0:
            return 'im sleepy', 0
        mem[480] = 32
        _114 = mem[mem[(32 * block.number % 4) + 96]]
        mem[512] = mem[mem[(32 * block.number % 4) + 96]]
        mem[544 len ceil32(_114)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_114)]
        if ceil32(_114) > _114:
            mem[_114 + 544] = 0
        return 32, mem[512 len ceil32(_114) + 32]
    if uint8(stor5.field_0) + (block.number - stor1 / 50) > 0:
        if uint8(stor5.field_8) + (block.number - stor2 / 50) <= 50:
            if uint8(stor5.field_16) + (block.number - stor3 / 50) <= 50:
                if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                    return 'im hungry', 0
                if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_0) + (block.number - stor1 / 50):
                    return 'im hungry', 0
            else:
                if uint8(stor5.field_16) + (block.number - stor3 / 50) <= uint8(stor5.field_0) + (block.number - stor1 / 50):
                    if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                        return 'im hungry', 0
                    if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_0) + (block.number - stor1 / 50):
                        return 'im hungry', 0
                else:
                    if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                        return '', 0
                    if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_16) + (block.number - stor3 / 50):
                        return '', 0
        else:
            if uint8(stor5.field_8) + (block.number - stor2 / 50) <= uint8(stor5.field_0) + (block.number - stor1 / 50):
                if uint8(stor5.field_16) + (block.number - stor3 / 50) <= 50:
                    if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                        return 'im hungry', 0
                    if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_0) + (block.number - stor1 / 50):
                        return 'im hungry', 0
                else:
                    if uint8(stor5.field_16) + (block.number - stor3 / 50) <= uint8(stor5.field_0) + (block.number - stor1 / 50):
                        if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                            return 'im hungry', 0
                        if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_0) + (block.number - stor1 / 50):
                            return 'im hungry', 0
                    else:
                        if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                            return '', 0
                        if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_16) + (block.number - stor3 / 50):
                            return '', 0
            else:
                if uint8(stor5.field_16) + (block.number - stor3 / 50) <= 50:
                    if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                        return '', 0
                    if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_8) + (block.number - stor2 / 50):
                        return '', 0
                else:
                    if uint8(stor5.field_16) + (block.number - stor3 / 50) <= uint8(stor5.field_8) + (block.number - stor2 / 50):
                        if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                            return '', 0
                        if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_8) + (block.number - stor2 / 50):
                            return '', 0
                    else:
                        if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                            return '', 0
                        if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_16) + (block.number - stor3 / 50):
                            return '', 0
        return 'im sleepy', 0
    if uint8(stor5.field_8) + (block.number - stor2 / 50) <= 50:
        if uint8(stor5.field_16) + (block.number - stor3 / 50) <= 50:
            if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                mem[480] = 32
                _64 = mem[mem[(32 * block.number % 4) + 96]]
                mem[512] = mem[mem[(32 * block.number % 4) + 96]]
                mem[544 len ceil32(_64)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_64)]
                if ceil32(_64) > _64:
                    mem[_64 + 544] = 0
                return 32, mem[512 len ceil32(_64) + 32]
            if uint8(stor5.field_24) + (block.number - stor4 / 50) > 0:
                return 'im sleepy', 0
            mem[480] = 32
            _89 = mem[mem[(32 * block.number % 4) + 96]]
            mem[512] = mem[mem[(32 * block.number % 4) + 96]]
            mem[544 len ceil32(_89)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_89)]
            if ceil32(_89) > _89:
                mem[_89 + 544] = 0
            return 32, mem[512 len ceil32(_89) + 32]
        if uint8(stor5.field_16) + (block.number - stor3 / 50) > 0:
            if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                return '', 0
            if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_16) + (block.number - stor3 / 50):
                return '', 0
            return 'im sleepy', 0
        if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
            mem[480] = 32
            _91 = mem[mem[(32 * block.number % 4) + 96]]
            mem[512] = mem[mem[(32 * block.number % 4) + 96]]
            mem[544 len ceil32(_91)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_91)]
            if ceil32(_91) > _91:
                mem[_91 + 544] = 0
            return 32, mem[512 len ceil32(_91) + 32]
        if uint8(stor5.field_24) + (block.number - stor4 / 50) > 0:
            return 'im sleepy', 0
        mem[480] = 32
        _126 = mem[mem[(32 * block.number % 4) + 96]]
        mem[512] = mem[mem[(32 * block.number % 4) + 96]]
        mem[544 len ceil32(_126)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_126)]
        if ceil32(_126) > _126:
            mem[_126 + 544] = 0
        return 32, mem[512 len ceil32(_126) + 32]
    if uint8(stor5.field_8) + (block.number - stor2 / 50) > 0:
        if uint8(stor5.field_16) + (block.number - stor3 / 50) <= 50:
            if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                return '', 0
            if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_8) + (block.number - stor2 / 50):
                return '', 0
        else:
            if uint8(stor5.field_16) + (block.number - stor3 / 50) <= uint8(stor5.field_8) + (block.number - stor2 / 50):
                if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                    return '', 0
                if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_8) + (block.number - stor2 / 50):
                    return '', 0
            else:
                if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
                    return '', 0
                if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_16) + (block.number - stor3 / 50):
                    return '', 0
        return 'im sleepy', 0
    if uint8(stor5.field_16) + (block.number - stor3 / 50) <= 50:
        if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
            mem[480] = 32
            _95 = mem[mem[(32 * block.number % 4) + 96]]
            mem[512] = mem[mem[(32 * block.number % 4) + 96]]
            mem[544 len ceil32(_95)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_95)]
            if ceil32(_95) > _95:
                mem[_95 + 544] = 0
            return 32, mem[512 len ceil32(_95) + 32]
        if uint8(stor5.field_24) + (block.number - stor4 / 50) > 0:
            return 'im sleepy', 0
        mem[480] = 32
        _130 = mem[mem[(32 * block.number % 4) + 96]]
        mem[512] = mem[mem[(32 * block.number % 4) + 96]]
        mem[544 len ceil32(_130)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_130)]
        if ceil32(_130) > _130:
            mem[_130 + 544] = 0
        return 32, mem[512 len ceil32(_130) + 32]
    if uint8(stor5.field_16) + (block.number - stor3 / 50) > 0:
        if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
            return '', 0
        if uint8(stor5.field_24) + (block.number - stor4 / 50) <= uint8(stor5.field_16) + (block.number - stor3 / 50):
            return '', 0
        return 'im sleepy', 0
    if uint8(stor5.field_24) + (block.number - stor4 / 50) <= 50:
        mem[480] = 32
        _132 = mem[mem[(32 * block.number % 4) + 96]]
        mem[512] = mem[mem[(32 * block.number % 4) + 96]]
        mem[544 len ceil32(_132)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_132)]
        if ceil32(_132) > _132:
            mem[_132 + 544] = 0
        return 32, mem[512 len ceil32(_132) + 32]
    if uint8(stor5.field_24) + (block.number - stor4 / 50) > 0:
        return 'im sleepy', 0
    mem[480] = 32
    _175 = mem[mem[(32 * block.number % 4) + 96]]
    mem[512] = mem[mem[(32 * block.number % 4) + 96]]
    mem[544 len ceil32(_175)] = mem[mem[(32 * block.number % 4) + 96] + 32 len ceil32(_175)]
    if ceil32(_175) > _175:
        mem[_175 + 544] = 0
    return 32, mem[512 len ceil32(_175) + 32]
}



}
